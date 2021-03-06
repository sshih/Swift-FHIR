//
//  ImmunizationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ImmunizationTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Immunization {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> Immunization {
		let instance = Immunization(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testImmunization1() {
		let instance = testImmunization1_impl()
		testImmunization1_impl(json: instance.asJSON())
	}
	
	func testImmunization1_impl(json: FHIRJSON? = nil) -> Immunization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "immunization-example-refused.json")
		
		XCTAssertEqual(inst.date!.description, "2013-01-10")
		XCTAssertEqual(inst.explanation!.reasonNotGiven![0].coding![0].code!, "MEDPREC")
		XCTAssertEqual(inst.explanation!.reasonNotGiven![0].coding![0].display!, "medical precaution")
		XCTAssertEqual(inst.explanation!.reasonNotGiven![0].coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.id!, "notGiven")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertFalse(inst.reported!)
		XCTAssertEqual(inst.text!.div!, "<div>Refused Immunization Example</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.vaccineType!.coding![0].code!, "01")
		XCTAssertEqual(inst.vaccineType!.coding![0].display!, "DTP")
		XCTAssertEqual(inst.vaccineType!.coding![0].system!.absoluteString!, "http://www2a.cdc.gov/vaccines/iis/iisstandards/vaccines.asp?rpt=cvx")
		XCTAssertTrue(inst.wasNotGiven!)
		
		return inst
	}
	
	func testImmunization2() {
		let instance = testImmunization2_impl()
		testImmunization2_impl(json: instance.asJSON())
	}
	
	func testImmunization2_impl(json: FHIRJSON? = nil) -> Immunization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "immunization-example.json")
		
		XCTAssertEqual(inst.date!.description, "2013-01-10")
		XCTAssertEqual(inst.expirationDate!.description, "2015-02-15")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.lotNumber!, "AAJN11K")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.performer!.reference!, "Practitioner/example")
		XCTAssertFalse(inst.reported!)
		XCTAssertEqual(inst.text!.div!, "<div>Authored by Joginder Madra</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.vaccineType!.coding![0].code!, "Fluvax")
		XCTAssertEqual(inst.vaccineType!.coding![0].system!.absoluteString!, "urn:oid:1.2.36.1.2001.1005.17")
		XCTAssertEqual(inst.vaccineType!.text!, "Fluvax (Influenza)")
		XCTAssertFalse(inst.wasNotGiven!)
		
		return inst
	}
}
