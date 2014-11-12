//
//  ConformanceTests.swift
//  ConformanceTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class ConformanceTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Conformance? {
		let json = readJSONFile(filename)
		let instance = Conformance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testConformance1() {
		let inst = instantiateFrom("conformance-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Conformance instance")
	
		XCTAssertTrue(inst!.acceptUnknown!)
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2012-01-04")!)	
		XCTAssertEqual(inst!.description!, "This is the FHIR conformance statement for the main EHR at ACME for the private interface - it does not describe the public interface")	
		XCTAssertEqual(inst!.document![0].documentation!, "Basic rules for all documents in the EHR system")	
		XCTAssertEqual(inst!.document![0].mode!, "consumer")	
		XCTAssertEqual(inst!.document![0].profile!.reference!, "http://fhir.hl7.org/base/Profilebc054d23-75e1-4dc6-aca5-838b6b1ac81d/history/b5fdd9fc-b021-4ea1-911a-721a60663796")	
		XCTAssertEqual(inst!.fhirVersion!, "0.07")	
		XCTAssertEqual(inst!.format![0], "xml")	
		XCTAssertEqual(inst!.format![1], "json")	
		XCTAssertEqual(inst!.identifier!, "68D043B5-9ECF-4559-A57A-396E0D452311")	
		XCTAssertEqual(inst!.messaging![0].event![0].code!.code!, "admin-notify")
		XCTAssertEqual(inst!.messaging![0].event![0].code!.system!, NSURL(string: "http://hl7.org/fhir/message-type")!)	
		XCTAssertEqual(inst!.messaging![0].event![0].focus!, "Patient")	
		XCTAssertEqual(inst!.messaging![0].event![0].mode!, "receiver")	
		XCTAssertEqual(inst!.messaging![0].event![0].request!.reference!, "Profile/101")	
		XCTAssertEqual(inst!.messaging![0].event![0].response!.reference!, "Profile/101")	
		XCTAssertEqual(inst!.name!, "ACME EHR Conformance statement")	
		XCTAssertEqual(inst!.publisher!, "ACME Corporation")	
		XCTAssertEqual(inst!.rest![0].mode!, "server")	
		XCTAssertEqual(inst!.rest![0].operation![0].code!, "transaction")	
		XCTAssertEqual(inst!.rest![0].operation![1].code!, "history-system")	
		XCTAssertEqual(inst!.rest![0].resource![0].operation![0].code!, "read")	
		XCTAssertEqual(inst!.rest![0].resource![0].operation![1].code!, "vread")	
		XCTAssertEqual(inst!.rest![0].resource![0].operation![2].code!, "update")	
		XCTAssertEqual(inst!.rest![0].resource![0].operation![3].code!, "history-instance")	
		XCTAssertEqual(inst!.rest![0].resource![0].operation![4].code!, "create")	
		XCTAssertEqual(inst!.rest![0].resource![0].operation![5].code!, "history-type")	
		XCTAssertEqual(inst!.rest![0].resource![0].profile!.reference!, "http://fhir.hl7.org/base/Profile7896271d-57f6-4231-89dc-dcc91eab2416")	
		XCTAssertEqual(inst!.rest![0].resource![0].type!, "Patient")	
		XCTAssertEqual(inst!.software!.name!, "EHR")	
		XCTAssertEqual(inst!.software!.version!, "0.00.020.2134")	
		XCTAssertEqual(inst!.telecom![0].system!, "email")	
		XCTAssertEqual(inst!.telecom![0].value!, "wile@acme.org")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>The EHR Server supports the following transactions for the resource Person: read, vread, \n        update, history, search(name,gender), create and updates.</p>\n      <p>The EHR System supports the following message: admin-notify::Person.</p>\n      <p>The EHR Application has a <a href=\"http://fhir.hl7.org/base/Profilebc054d23-75e1-4dc6-aca5-838b6b1ac81d/history/b5fdd9fc-b021-4ea1-911a-721a60663796\">general document profile</a>.</p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.version!, "20130510")
	}
	
	func testConformance2() {
		let inst = instantiateFrom("conformance-phr-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Conformance instance")
	
		XCTAssertFalse(inst!.acceptUnknown!)
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2013-06-18")!)	
		XCTAssertEqual(inst!.description!, "Prototype Conformance Statement for September 2013 Connectathon")	
		XCTAssertEqual(inst!.fhirVersion!, "0.09")	
		XCTAssertEqual(inst!.format![0], "json")	
		XCTAssertEqual(inst!.format![1], "xml")	
		XCTAssertEqual(inst!.name!, "PHR Template")	
		XCTAssertEqual(inst!.publisher!, "FHIR Project")	
		XCTAssertEqual(inst!.rest![0].documentation!, "Protoype server conformance statement for September 2013 Connectathon")	
		XCTAssertEqual(inst!.rest![0].mode!, "server")	
		XCTAssertEqual(inst!.rest![0].resource![0].operation![0].code!, "read")	
		XCTAssertEqual(inst!.rest![0].resource![0].operation![1].code!, "search-type")	
		XCTAssertEqual(inst!.rest![0].resource![0].operation![1].documentation!, "When a client searches patients with no search criteria, they get a list of all patients they have access too. Servers may elect to offer additional search parameters, but this is not required")	
		XCTAssertEqual(inst!.rest![0].resource![0].type!, "Patient")	
		XCTAssertEqual(inst!.rest![0].resource![1].operation![0].code!, "read")	
		XCTAssertEqual(inst!.rest![0].resource![1].operation![1].code!, "search-type")	
		XCTAssertEqual(inst!.rest![0].resource![1].searchParam![0].documentation!, "_id parameter always supported. For the connectathon, servers may elect which search parameters are supported")	
		XCTAssertEqual(inst!.rest![0].resource![1].searchParam![0].name!, "_id")	
		XCTAssertEqual(inst!.rest![0].resource![1].searchParam![0].type!, "token")	
		XCTAssertEqual(inst!.rest![0].resource![1].type!, "DocumentReference")	
		XCTAssertEqual(inst!.rest![0].resource![2].operation![0].code!, "read")	
		XCTAssertEqual(inst!.rest![0].resource![2].operation![1].code!, "search-type")	
		XCTAssertEqual(inst!.rest![0].resource![2].searchParam![0].documentation!, "Standard _id parameter")	
		XCTAssertEqual(inst!.rest![0].resource![2].searchParam![0].name!, "_id")	
		XCTAssertEqual(inst!.rest![0].resource![2].searchParam![0].type!, "token")	
		XCTAssertEqual(inst!.rest![0].resource![2].type!, "Condition")	
		XCTAssertEqual(inst!.rest![0].resource![3].operation![0].code!, "read")	
		XCTAssertEqual(inst!.rest![0].resource![3].operation![1].code!, "search-type")	
		XCTAssertEqual(inst!.rest![0].resource![3].searchParam![0].documentation!, "Standard _id parameter")	
		XCTAssertEqual(inst!.rest![0].resource![3].searchParam![0].name!, "_id")	
		XCTAssertEqual(inst!.rest![0].resource![3].searchParam![0].type!, "token")	
		XCTAssertEqual(inst!.rest![0].resource![3].searchParam![1].documentation!, "which diagnostic discipline/department created the report")	
		XCTAssertEqual(inst!.rest![0].resource![3].searchParam![1].name!, "service")	
		XCTAssertEqual(inst!.rest![0].resource![3].searchParam![1].type!, "token")	
		XCTAssertEqual(inst!.rest![0].resource![3].type!, "DiagnosticReport")	
		XCTAssertEqual(inst!.rest![0].security!.description!, "We recommend that PHR servers use standard OAuth using a          standard 3rd party provider. We are not testing the ability to provide an          OAuth authentication/authorization service itself, and nor is providing          any security required for the connectathon at all")	
		XCTAssertEqual(inst!.rest![0].security!.service![0].text!, "OAuth")	
		XCTAssertEqual(inst!.telecom![0].system!, "url")	
		XCTAssertEqual(inst!.telecom![0].value!, "http://hl7.org/fhir")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n     <p>Prototype Conformance Statement for September 2013 Connectathon</p>\n     <p>The server offers read and search support on the following resource types:</p>\n     <ul>\n      <li>Patient</li>\n      <li>DocumentReference</li>\n      <li>Condition</li>\n      <li>DiagnosticReport</li>\n    </ul>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
