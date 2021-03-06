//
//  SupplyTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SupplyTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Supply {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> Supply {
		let instance = Supply(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSupply1() {
		let instance = testSupply1_impl()
		testSupply1_impl(json: instance.asJSON())
	}
	
	func testSupply1_impl(json: FHIRJSON? = nil) -> Supply {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "supply-example1.json")
		
		XCTAssertEqual(inst.dispense![0].destination!.display!, "Neuro Radiology Operation Room ")
		XCTAssertEqual(inst.dispense![0].destination!.reference!, "Location/2")
		XCTAssertEqual(inst.dispense![0].identifier!.assigner!.display!, "Good Health Clinic")
		XCTAssertEqual(inst.dispense![0].identifier!.assigner!.reference!, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.dispense![0].identifier!.system!.absoluteString!, "http://example.org/MM-Supply-Application")
		XCTAssertEqual(inst.dispense![0].identifier!.use!, "usual")
		XCTAssertEqual(inst.dispense![0].identifier!.value!, "12345")
		XCTAssertEqual(inst.dispense![0].quantity!.code!, "{each}")
		XCTAssertEqual(inst.dispense![0].quantity!.system!.absoluteString!, "http://unitsofmeasure.org/")
		XCTAssertEqual(inst.dispense![0].quantity!.units!, "EA")
		XCTAssertEqual(inst.dispense![0].quantity!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dispense![0].receiver![0].display!, "Carla Espinosa")
		XCTAssertEqual(inst.dispense![0].receiver![0].reference!, "Practitioner/f204")
		XCTAssertEqual(inst.dispense![0].status!, "dispensed")
		XCTAssertEqual(inst.dispense![0].suppliedItem!.display!, "Feeding tube")
		XCTAssertEqual(inst.dispense![0].suppliedItem!.reference!, "Device/f001")
		XCTAssertEqual(inst.dispense![0].supplier!.display!, "Rob van den Berk ")
		XCTAssertEqual(inst.dispense![0].supplier!.reference!, "Practitioner/f006")
		XCTAssertEqual(inst.dispense![0].type!.coding![0].code!, "device")
		XCTAssertEqual(inst.dispense![0].type!.coding![0].display!, "Device")
		XCTAssertTrue(inst.dispense![0].type!.coding![0].primary!)
		XCTAssertEqual(inst.dispense![0].type!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/supply-item-type")
		XCTAssertEqual(inst.dispense![0].whenHandedOver!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.id!, "102")
		XCTAssertEqual(inst.identifier!.assigner!.display!, "Good Health Clinic")
		XCTAssertEqual(inst.identifier!.assigner!.reference!, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.identifier!.system!.absoluteString!, "http://example.org/OR-Supply-Application")
		XCTAssertEqual(inst.identifier!.value!, "23455")
		XCTAssertEqual(inst.kind!.coding![0].code!, "central")
		XCTAssertEqual(inst.kind!.coding![0].display!, "Central Supply")
		XCTAssertTrue(inst.kind!.coding![0].primary!)
		XCTAssertEqual(inst.kind!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/supply-type")
		XCTAssertEqual(inst.orderedItem!.display!, "Feeding tube")
		XCTAssertEqual(inst.orderedItem!.reference!, "Device/f001")
		XCTAssertEqual(inst.status!, "received")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
