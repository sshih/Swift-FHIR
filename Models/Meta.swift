//
//  Meta.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Meta) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Metadata about a resource.
 *
 *  The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes to
 *  the content may not always be associated with version changes to the resource.
 */
public class Meta: FHIRElement
{
	override public class var resourceName: String {
		get { return "Meta" }
	}
	
	/// When the resource version last changed
	public var lastUpdated: Instant?
	
	/// Profiles this resource claims to conform to
	public var profile: [NSURL]?
	
	/// Security Labels applied to this resource
	public var security: [Coding]?
	
	/// Tags applied
	public var tag: [Coding]?
	
	/// Version specific identifier
	public var versionId: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["lastUpdated"] {
				presentKeys.addObject("lastUpdated")
				if let val = exist as? String {
					self.lastUpdated = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"lastUpdated\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.addObject("profile")
				if let val = exist as? [String] {
					self.profile = NSURL.from(val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"profile\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["security"] {
				presentKeys.addObject("security")
				if let val = exist as? [FHIRJSON] {
					self.security = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"security\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["tag"] {
				presentKeys.addObject("tag")
				if let val = exist as? [FHIRJSON] {
					self.tag = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"tag\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["versionId"] {
				presentKeys.addObject("versionId")
				if let val = exist as? String {
					self.versionId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"versionId\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let lastUpdated = self.lastUpdated {
			json["lastUpdated"] = lastUpdated.asJSON()
		}
		if let profile = self.profile {
			var arr = [AnyObject]()
			for val in profile {
				arr.append(val.asJSON())
			}
			json["profile"] = arr
		}
		if let security = self.security {
			json["security"] = Coding.asJSONArray(security)
		}
		if let tag = self.tag {
			json["tag"] = Coding.asJSONArray(tag)
		}
		if let versionId = self.versionId {
			json["versionId"] = versionId.asJSON()
		}
		
		return json
	}
}

