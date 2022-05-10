// schoolscraper Friendly interface for parsing school closure data from various websites
package schoolscraper

import (
	"errors"
	"fmt"
	"strings"

	"golang.org/x/net/html"
)

// Status information describing a school and the status of its buses and availability
type School struct {
	district   string
	name       string
	openstatus string
	busstatus  string
	message    string
}

// URL where School closure information can be retrieved
const ScheduleURL = "https://bp.nbed.nb.ca/notices/BPRFtbl.aspx?dst=dsfs&amp;vtbl=1"

// Entrypoint method that parses school data from a web URL and returns the status
// information back to the caller in a digestible form
func ScrapeSchools(body string) ([]School, error) {
	doc, err := html.Parse(strings.NewReader(body))
	if err != nil {
		return nil, err
	}

	var retval []School

	var parseSchoolData func(*html.Node) error
	parseSchoolData = func(n *html.Node) error {
		if n.Type == html.ElementNode && n.Data == "tr" {
			var rowData [5]string
			var counter = 0
			var header = false
			for c := n.FirstChild; c != nil; c = c.NextSibling {
				if c.Data != "td" {
					continue
				}

				for d := c.FirstChild; d != nil; d = d.NextSibling {
					for _, attr := range c.Attr {
						if attr.Key == "class" && attr.Val == "tblH0" {
							header = true
						}
					}
					if header {
						return nil
					}
					rowData[counter] = d.Data
				}
				counter++
			}
			if counter != 5 {
				return errors.New("failed to parse school data")
			}
			temp := School{
				district:   rowData[0],
				name:       rowData[1],
				openstatus: rowData[2],
				busstatus:  rowData[3],
				message:    rowData[4],
			}

			retval = append(retval, temp)

		}
		for c := n.FirstChild; c != nil; c = c.NextSibling {
			parseSchoolData(c)
		}
		return nil
	}
	err = parseSchoolData(doc)
	return retval, err
}

// Loads data for a specific school from HTML content scraped from
// the schools website
func GetSchoolStatus(html string, districtName string, schoolName string) (School, error) {
	parsedData, err := ScrapeSchools(html)
	if err != nil {
		return School{}, err
	}
	for _, school := range parsedData {
		if school.name == schoolName && school.district == districtName {
			return school, nil
		}
	}
	msg := fmt.Sprintf("school %s in district %s not found", schoolName, districtName)
	return School{}, errors.New(msg)
}
