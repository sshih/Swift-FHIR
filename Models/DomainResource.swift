//
//  DomainResource.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/DomainResource) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A resource with narrative, extensions, and contained resources.
 *
 *  A resource that includes narrative, extensions, and contained resources.
 */
public class DomainResource: Resource
{
	override public class var resourceName: String {
		get { return "DomainResource" }
	}
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["text"] {
				presentKeys.addObject("text")
				if let val = exist as? FHIRJSON {
					self.text = Narrative(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"text\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}

