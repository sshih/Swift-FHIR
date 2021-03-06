//
//  MessageHeaderTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class MessageHeaderTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> MessageHeader {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> MessageHeader {
		let instance = MessageHeader(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMessageHeader1() {
		let instance = testMessageHeader1_impl()
		testMessageHeader1_impl(json: instance.asJSON())
	}
	
	func testMessageHeader1_impl(json: FHIRJSON? = nil) -> MessageHeader {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "messageheader-example.json")
		
		XCTAssertEqual(inst.author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.data![0].reference!, "Patient/example")
		XCTAssertEqual(inst.destination![0].endpoint!.absoluteString!, "llp:10.11.12.14:5432")
		XCTAssertEqual(inst.destination![0].name!, "Acme Message Gateway")
		XCTAssertEqual(inst.destination![0].target!.reference!, "Device/example")
		XCTAssertEqual(inst.event!.code!, "admin-update")
		XCTAssertEqual(inst.event!.system!.absoluteString!, "http://hl7.org/fhir/message-type")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier!, "1cbdfb97-5859-48a4-8301-d54eab818d68")
		XCTAssertEqual(inst.response!.code!, "ok")
		XCTAssertEqual(inst.response!.identifier!, "5015fe84-8e76-4526-89d8-44b322e8d4fb")
		XCTAssertEqual(inst.source!.contact!.system!, "phone")
		XCTAssertEqual(inst.source!.contact!.value!, "+1 (555) 123 4567")
		XCTAssertEqual(inst.source!.endpoint!.absoluteString!, "llp:10.11.12.13:5432")
		XCTAssertEqual(inst.source!.name!, "Acme Central Patient Registry")
		XCTAssertEqual(inst.source!.software!, "FooBar Patient Manager")
		XCTAssertEqual(inst.source!.version!, "3.1.45.AABB")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.timestamp!.description, "2012-01-04T09:10:14Z")
		
		return inst
	}
}
