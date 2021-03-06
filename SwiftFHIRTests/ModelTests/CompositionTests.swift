//
//  CompositionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CompositionTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Composition {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> Composition {
		let instance = Composition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testComposition1() {
		let instance = testComposition1_impl()
		testComposition1_impl(json: instance.asJSON())
	}
	
	func testComposition1_impl(json: FHIRJSON? = nil) -> Composition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "composition-example.json")
		
		XCTAssertEqual(inst.attester![0].mode![0], "legal")
		XCTAssertEqual(inst.attester![0].party!.display!, "Robert Dolin MD")
		XCTAssertEqual(inst.attester![0].party!.reference!, "Practitioner/xcda-author")
		XCTAssertEqual(inst.author![0].display!, "Robert Dolin MD")
		XCTAssertEqual(inst.author![0].reference!, "Practitioner/xcda-author")
		XCTAssertEqual(inst.confidentiality!, "N")
		XCTAssertEqual(inst.custodian!.display!, "Good Health Clinic")
		XCTAssertEqual(inst.custodian!.reference!, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.date!.description, "2012-01-04T09:10:14Z")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier!.system!.absoluteString!, "http://healthintersections.com.au/test")
		XCTAssertEqual(inst.identifier!.value!, "1")
		XCTAssertEqual(inst.section![0].content!.reference!, "List/example")
		XCTAssertEqual(inst.section![0].title!, "History of present illness")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Henry Levin the 7th")
		XCTAssertEqual(inst.subject!.reference!, "Patient/xcda")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "11488-4")
		XCTAssertEqual(inst.type!.coding![0].display!, "Consult note")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://loinc.org")
		
		return inst
	}
}
