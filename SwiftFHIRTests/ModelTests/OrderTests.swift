//
//  OrderTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class OrderTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Order {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> Order {
		let instance = Order(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOrder1() {
		let instance = testOrder1_impl()
		testOrder1_impl(json: instance.asJSON())
	}
	
	func testOrder1_impl(json: FHIRJSON? = nil) -> Order {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "order-example-f201-physiotherapy.json")
		
		XCTAssertEqual(inst.date!.description, "2013-03-05T12:00:00+01:00")
		XCTAssertEqual(inst.detail![0].display!, "Consultation, not yet developed")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.reasonCodeableConcept!.text!, "It concerns a one-off order for consultation in order to evaluate the stairs walking ability of Roel.")
		XCTAssertEqual(inst.source!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		XCTAssertEqual(inst.target!.display!, "Juri van Gelder")
		XCTAssertEqual(inst.target!.reference!, "Practitioner/f203")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.when!.code!.coding![0].code!, "394848005")
		XCTAssertEqual(inst.when!.code!.coding![0].display!, "Normal priority")
		XCTAssertEqual(inst.when!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testOrder2() {
		let instance = testOrder2_impl()
		testOrder2_impl(json: instance.asJSON())
	}
	
	func testOrder2_impl(json: FHIRJSON? = nil) -> Order {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "order-example.json")
		
		XCTAssertEqual(inst.date!.description, "2012-12-28T09:03:04+11:00")
		XCTAssertEqual(inst.detail![0].reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.reasonCodeableConcept!.text!, "Standard admission testing")
		XCTAssertEqual(inst.source!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/pat2")
		XCTAssertEqual(inst.text!.div!, "<div>Request for Prescription (on patient Donald DUCK @ Acme Healthcare, Inc. MR = 654321)</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.when!.code!.coding![0].code!, "today")
		XCTAssertEqual(inst.when!.code!.coding![0].system!.absoluteString!, "http://acme.com/codes/request-priority")
		
		return inst
	}
}
