package schoolscraper

import (
	"os"
	"testing"
)

func TestBasicParsing(t *testing.T) {
	dat, err := os.ReadFile("sample.html")
	if err != nil {
		t.Fatalf("Error loading sample data: %v", err)
	}

	schools, err := ScrapeSchools(string(dat))
	if err != nil {
		t.Fatalf("Parsing should not have failed: %v", err)
	}

	expected := "BAIE-SAINTE-ANNE"
	if schools[0].district != expected {
		t.Errorf("First district should be %s: %s", expected, schools[0].district)
	}
	expected_count := 37
	if len(schools) != expected_count {
		t.Errorf("Expected number of schools: %d Actual count: %d", expected_count, len(schools))
	}
}

func TestLookupOpenSchool(t *testing.T) {
	data, err := os.ReadFile("sample.html")
	if err != nil {
		t.Fatalf("%v", err)
	}

	expectedDistrict := "FREDERICTON"
	expectedSchoolName := "École Sainte-Anne"
	result, err := GetSchoolStatus(string(data), expectedDistrict, expectedSchoolName)
	if err != nil {
		t.Fatalf("%v", err)
	}
	if result.name != expectedSchoolName {
		t.Errorf("Expected school name: %s Actual name: %s", expectedSchoolName, result.name)
	}
	if result.district != expectedDistrict {
		t.Errorf("Expected district name: %s Actual name: %s", expectedDistrict, result.district)
	}
}
