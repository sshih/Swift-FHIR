//
//  PaymentNoticeTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class PaymentNoticeTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> PaymentNotice {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> PaymentNotice {
		let instance = PaymentNotice(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPaymentNotice1() {
		let instance = testPaymentNotice1_impl()
		testPaymentNotice1_impl(json: instance.asJSON())
	}
	
	func testPaymentNotice1_impl(json: FHIRJSON? = nil) -> PaymentNotice {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "paymentnotice-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "77654")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://benefitsinc.com/paymentnotice")
		XCTAssertEqual(inst.identifier![0].value!, "776543")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.paymentStatus!.code!, "paid")
		XCTAssertEqual(inst.paymentStatus!.system!.absoluteString!, "http://hl7.org/fhir/paymentstatus")
		XCTAssertEqual(inst.request!.reference!, "http://benefitsinc.com/fhir/oralhealthclaim/12345")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the PaymentNotice</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
