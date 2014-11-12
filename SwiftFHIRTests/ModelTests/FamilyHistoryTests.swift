//
//  FamilyHistoryTests.swift
//  FamilyHistoryTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class FamilyHistoryTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> FamilyHistory? {
		let json = readJSONFile(filename)
		let instance = FamilyHistory(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testFamilyHistory1() {
		let inst = instantiateFrom("familyhistory-example-f201-roel.json")
		XCTAssertNotNil(inst, "Must have instantiated a FamilyHistory instance")
		
		XCTAssertEqual(inst!.note!, "Both parents, both brothers and both children (twin) are still alive.")	
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].code!, "39839004")	
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].display!, "Diaphragmatic hernia")
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertFalse(inst!.relation![0].deceasedBoolean!)	
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].code!, "72705000")	
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].display!, "Mother")
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)	
		XCTAssertEqual(inst!.relation![1].condition![0].outcome!.coding![0].code!, "419099009")	
		XCTAssertEqual(inst!.relation![1].condition![0].outcome!.coding![0].display!, "Died")
		XCTAssertEqual(inst!.relation![1].condition![0].outcome!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)	
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].code!, "115665000")	
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].display!, "Atopy")
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertTrue(inst!.relation![1].deceasedBoolean!)	
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].code!, "38048003")	
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].display!, "Uncle")
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)	
		XCTAssertEqual(inst!.subject!.display!, "Roel")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>note</b>: Both parents, both brothers and both children (twin) are still alive.\n      </p>\n      <blockquote>\n        <p>\n          <b>relation</b>\n        </p>\n        <p>\n          <b>relationship</b>: \n          <span title=\"Codes: {http://snomed.info/sct 72705000}\">Mother</span>\n        </p>\n        <p>\n          <b>deceased[x]</b>: false\n        </p>\n        <h3>Conditions</h3>\n        <table class=\"grid\">\n          <tr>\n            <td>\n              <b>Type</b>\n            </td>\n            <td>\n              <b>Outcome</b>\n            </td>\n            <td>\n              <b>Onset[x]</b>\n            </td>\n            <td>\n              <b>Note</b>\n            </td>\n          </tr>\n          <tr>\n            <td>\n              <span title=\"Codes: {http://snomed.info/sct 39839004}\">Diaphragmatic hernia</span>\n            </td>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n          </tr>\n        </table>\n      </blockquote>\n      <blockquote>\n        <p>\n          <b>relation</b>\n        </p>\n        <p>\n          <b>relationship</b>: \n          <span title=\"Codes: {http://snomed.info/sct 38048003}\">Uncle</span>\n        </p>\n        <p>\n          <b>deceased[x]</b>: true\n        </p>\n        <h3>Conditions</h3>\n        <table class=\"grid\">\n          <tr>\n            <td>\n              <b>Type</b>\n            </td>\n            <td>\n              <b>Outcome</b>\n            </td>\n            <td>\n              <b>Onset[x]</b>\n            </td>\n            <td>\n              <b>Note</b>\n            </td>\n          </tr>\n          <tr>\n            <td>\n              <span title=\"Codes: {http://snomed.info/sct 115665000}\">Atopy</span>\n            </td>\n            <td>\n              <span title=\"Codes: {http://snomed.info/sct 419099009}\">Died</span>\n            </td>\n            <td> </td>\n            <td> </td>\n          </tr>\n        </table>\n      </blockquote>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testFamilyHistory2() {
		let inst = instantiateFrom("familyhistory-example-mother.json")
		XCTAssertNotNil(inst, "Must have instantiated a FamilyHistory instance")
		
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].code!, "371041009")	
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].display!, "Embolic Stroke")
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)	
		XCTAssertEqual(inst!.relation![0].condition![0].type!.text!, "Stroke")	
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].code!, "mother")
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/familial-relationship")!)	
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].code!, "190372001")	
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].display!, "Type 1 Diabetes, Maturity Onset")
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)	
		XCTAssertEqual(inst!.relation![1].condition![0].type!.text!, "Diabetes Mellitus")	
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].code!, "brother")
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/familial-relationship")!)	
		XCTAssertEqual(inst!.subject!.display!, "Peter Patient")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/100")	
		XCTAssertEqual(inst!.text!.div!, "<div>Mother died of a stroke aged 56. Brother has diabetes</div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testFamilyHistory3() {
		let inst = instantiateFrom("familyhistory-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a FamilyHistory instance")
		
		XCTAssertEqual(inst!.relation![0].condition![0].note!, "Was fishing at the time. At least he went doing someting he loved.")	
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].code!, "315619001")	
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].display!, "Myocardial Infarction")
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)	
		XCTAssertEqual(inst!.relation![0].condition![0].type!.text!, "Heart Attack")	
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].code!, "father")
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/familial-relationship")!)	
		XCTAssertEqual(inst!.subject!.display!, "Peter Patient")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")	
		XCTAssertEqual(inst!.text!.div!, "<div>Father died of a heart attack aged 74</div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testFamilyHistory4() {
		let inst = instantiateFrom("familyhistory-genetics-profile-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a FamilyHistory instance")
		
		XCTAssertEqual(inst!.relation![0].name!, "Dave")	
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].code!, "FTH")	
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].display!, "father")
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode")!)	
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].code!, "GRFTH")	
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].display!, "grandfather")
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode")!)	
		XCTAssertEqual(inst!.relation![2].relationship!.coding![0].code!, "PUNCLE")	
		XCTAssertEqual(inst!.relation![2].relationship!.coding![0].display!, "paternal uncle")
		XCTAssertEqual(inst!.relation![2].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode")!)	
		XCTAssertEqual(inst!.relation![3].relationship!.coding![0].code!, "PUNCLE")	
		XCTAssertEqual(inst!.relation![3].relationship!.coding![0].display!, "paternal uncle")
		XCTAssertEqual(inst!.relation![3].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode")!)	
		XCTAssertEqual(inst!.relation![4].name!, "Eve")	
		XCTAssertEqual(inst!.relation![4].relationship!.coding![0].code!, "PAUNT")	
		XCTAssertEqual(inst!.relation![4].relationship!.coding![0].display!, "paternal aunt")
		XCTAssertEqual(inst!.relation![4].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode")!)	
		XCTAssertEqual(inst!.relation![5].relationship!.coding![0].code!, "PAUNT")	
		XCTAssertEqual(inst!.relation![5].relationship!.coding![0].display!, "paternal aunt")
		XCTAssertEqual(inst!.relation![5].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode")!)	
		XCTAssertEqual(inst!.relation![6].relationship!.coding![0].code!, "PAUNT")	
		XCTAssertEqual(inst!.relation![6].relationship!.coding![0].display!, "paternal aunt")
		XCTAssertEqual(inst!.relation![6].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode")!)	
		XCTAssertEqual(inst!.relation![7].name!, "Alice")	
		XCTAssertEqual(inst!.relation![7].relationship!.coding![0].code!, "PCOUSN")	
		XCTAssertEqual(inst!.relation![7].relationship!.coding![0].display!, "paternal cousin")
		XCTAssertEqual(inst!.relation![7].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode")!)	
		XCTAssertEqual(inst!.subject!.display!, "Peter Patient")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")	
		XCTAssertEqual(inst!.text!.div!, "<div>To do</div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
