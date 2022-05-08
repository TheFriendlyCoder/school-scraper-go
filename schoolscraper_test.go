package schoolscraper

import (
	"os"
	"testing"
)

func TestBasicParsing(t *testing.T) {
	dat, err := os.ReadFile("sample.html")
	if err != nil {
		panic(err)
	}

	schools, err := ScrapeSchools(string(dat))
	if err != nil {
		t.Errorf("Parsing should not have failed: %v", err)
	}

	expected := "BAIE-SAINTE-ANNE"
	if schools[0].district != expected {
		t.Errorf("First district should be %v: %v", expected, schools[0].district)
	}
	expected_count := 37
	if len(schools) != expected_count {
		t.Errorf("Expected: %v Actual: %v", expected_count, len(schools))
	}
}
