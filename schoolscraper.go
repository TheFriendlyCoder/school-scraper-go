// schoolscraper Friendly interface for parsing school closure data from various websites
package schoolscraper

import (
	"strings"

	"golang.org/x/net/html"
)

// Status information describing a school and the status of its buses and availability
type school struct {
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
func ScrapeSchools(body string) []school {
	doc, err := html.Parse(strings.NewReader(body))
	if err != nil {
		panic(err)
	}

	var retval []school

	var parseSchoolData func(*html.Node)
	parseSchoolData = func(n *html.Node) {
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
						return
					}
					rowData[counter] = d.Data
				}
				counter++
			}
			if counter != 5 {
				panic("Failed to parse school data")
			}
			temp := school{
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
	}
	parseSchoolData(doc)
	return retval
}
