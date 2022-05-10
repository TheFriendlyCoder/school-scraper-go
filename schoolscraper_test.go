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
	if schools[0].District != expected {
		t.Errorf("First district should be %s: %s", expected, schools[0].District)
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
	expectedStatus := "Ouvert"
	result, err := GetSchoolStatus(string(data), expectedDistrict, expectedSchoolName)
	if err != nil {
		t.Fatalf("%v", err)
	}
	if result.Name != expectedSchoolName {
		t.Errorf("Expected school name: %s Actual name: %s", expectedSchoolName, result.Name)
	}
	if result.District != expectedDistrict {
		t.Errorf("Expected district name: %s Actual name: %s", expectedDistrict, result.District)
	}
	if result.OpenStatus != expectedStatus {
		t.Errorf("Expected school status was: %s Actual status: %s", expectedStatus, result.OpenStatus)
	}
	if !result.IsOpen() {
		t.Errorf("School with status %s should be flagged as being open", result.OpenStatus)
	}
	if result.IsClosed() {
		t.Errorf("School with status %s should not be flagged as being closed", result.OpenStatus)
	}
	if result.HasLateBuses() {
		t.Errorf("School with bus status %s should not be flagged as having late buses", result.BusStatus)
	}
	if !result.AllBusesOnTime() {
		t.Errorf("School with bus status %s should be flagged as having no late buses", result.BusStatus)
	}
}
