//
//  StructureDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/StructureDefinition) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Structural Definition.
 *
 *  A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined in
 *  FHIR, and also for describing extensions, and constraints on resources and data types.
 */
public class StructureDefinition: DomainResource
{
	override public class var resourceName: String {
		get { return "StructureDefinition" }
	}
	
	/// Whether the structure is abstract
	public var abstract: Bool?
	
	/// Structure that this set of constraints applies to
	public var base: NSURL?
	
	/// Assist with indexing and finding
	public var code: [Coding]?
	
	/// Contact details of the publisher
	public var contact: [StructureDefinitionContact]?
	
	/// Where the extension can be used in instances
	public var context: [String]?
	
	/// resource | datatype | mapping | extension
	public var contextType: String?
	
	/// Use and/or Publishing restrictions
	public var copyright: String?
	
	/// Date for this version of the StructureDefinition
	public var date: DateTime?
	
	/// Natural language description of the StructureDefinition
	public var description_fhir: String?
	
	/// Differential view of the structure
	public var differential: StructureDefinitionDifferential?
	
	/// Use this name when displaying the value
	public var display: String?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// FHIR Version this StructureDefinition targets
	public var fhirVersion: String?
	
	/// Other identifiers for the StructureDefinition
	public var identifier: [Identifier]?
	
	/// External specification that the content is mapped to
	public var mapping: [StructureDefinitionMapping]?
	
	/// Informal name for this StructureDefinition
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Scope and Usage this structure definition is for
	public var requirements: String?
	
	/// Snapshot view of the structure
	public var snapshot: StructureDefinitionSnapshot?
	
	/// draft | active | retired
	public var status: String?
	
	/// type | resource | constraint | extension
	public var type: String?
	
	/// Literal URL used to reference this StructureDefinition
	public var url: NSURL?
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the StructureDefinition
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(abstract: Bool?, name: String?, status: String?, type: String?, url: NSURL?) {
		self.init(json: nil)
		if nil != abstract {
			self.abstract = abstract
		}
		if nil != name {
			self.name = name
		}
		if nil != status {
			self.status = status
		}
		if nil != type {
			self.type = type
		}
		if nil != url {
			self.url = url
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["abstract"] {
				presentKeys.addObject("abstract")
				if let val = exist as? Bool {
					self.abstract = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"abstract\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"abstract\" but it is missing"))
			}
			if let exist: AnyObject = js["base"] {
				presentKeys.addObject("base")
				if let val = exist as? String {
					self.base = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"base\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? [FHIRJSON] {
					self.code = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.addObject("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = StructureDefinitionContact.from(val, owner: self) as? [StructureDefinitionContact]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contact\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["context"] {
				presentKeys.addObject("context")
				if let val = exist as? [String] {
					self.context = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"context\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["contextType"] {
				presentKeys.addObject("contextType")
				if let val = exist as? String {
					self.contextType = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contextType\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["copyright"] {
				presentKeys.addObject("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"copyright\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["differential"] {
				presentKeys.addObject("differential")
				if let val = exist as? FHIRJSON {
					self.differential = StructureDefinitionDifferential(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"differential\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["display"] {
				presentKeys.addObject("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"display\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["experimental"] {
				presentKeys.addObject("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"experimental\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fhirVersion"] {
				presentKeys.addObject("fhirVersion")
				if let val = exist as? String {
					self.fhirVersion = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fhirVersion\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["mapping"] {
				presentKeys.addObject("mapping")
				if let val = exist as? [FHIRJSON] {
					self.mapping = StructureDefinitionMapping.from(val, owner: self) as? [StructureDefinitionMapping]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"mapping\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"name\" but it is missing"))
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.addObject("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"publisher\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["requirements"] {
				presentKeys.addObject("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"requirements\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["snapshot"] {
				presentKeys.addObject("snapshot")
				if let val = exist as? FHIRJSON {
					self.snapshot = StructureDefinitionSnapshot(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"snapshot\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"url\" but it is missing"))
			}
			if let exist: AnyObject = js["useContext"] {
				presentKeys.addObject("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"useContext\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.addObject("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"version\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let abstract = self.abstract {
			json["abstract"] = abstract.asJSON()
		}
		if let base = self.base {
			json["base"] = base.asJSON()
		}
		if let code = self.code {
			json["code"] = Coding.asJSONArray(code)
		}
		if let contact = self.contact {
			json["contact"] = StructureDefinitionContact.asJSONArray(contact)
		}
		if let context = self.context {
			var arr = [AnyObject]()
			for val in context {
				arr.append(val.asJSON())
			}
			json["context"] = arr
		}
		if let contextType = self.contextType {
			json["contextType"] = contextType.asJSON()
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let differential = self.differential {
			json["differential"] = differential.asJSON()
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fhirVersion = self.fhirVersion {
			json["fhirVersion"] = fhirVersion.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let mapping = self.mapping {
			json["mapping"] = StructureDefinitionMapping.asJSONArray(mapping)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let requirements = self.requirements {
			json["requirements"] = requirements.asJSON()
		}
		if let snapshot = self.snapshot {
			json["snapshot"] = snapshot.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = CodeableConcept.asJSONArray(useContext)
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact details of the publisher.
 *
 *  Contacts to assist a user in finding and communicating with the publisher.
 */
public class StructureDefinitionContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "StructureDefinitionContact" }
	}
	
	/// Name of a individual to contact
	public var name: String?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.addObject("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"telecom\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}


/**
 *  Differential view of the structure.
 *
 *  A differential view is expressed relative to the base StructureDefinition - a statement of differences that it
 *  applies.
 */
public class StructureDefinitionDifferential: FHIRElement
{
	override public class var resourceName: String {
		get { return "StructureDefinitionDifferential" }
	}
	
	/// Definition of elements in the resource (if no StructureDefinition)
	public var element: [ElementDefinition]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(element: [ElementDefinition]?) {
		self.init(json: nil)
		if nil != element {
			self.element = element
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["element"] {
				presentKeys.addObject("element")
				if let val = exist as? [FHIRJSON] {
					self.element = ElementDefinition.from(val, owner: self) as? [ElementDefinition]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"element\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"element\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let element = self.element {
			json["element"] = ElementDefinition.asJSONArray(element)
		}
		
		return json
	}
}


/**
 *  External specification that the content is mapped to.
 *
 *  An external specification that the content is mapped to.
 */
public class StructureDefinitionMapping: FHIRElement
{
	override public class var resourceName: String {
		get { return "StructureDefinitionMapping" }
	}
	
	/// Versions, Issues, Scope limitations etc
	public var comments: String?
	
	/// Internal id when this mapping is used
	public var identity: String?
	
	/// Names what this mapping refers to
	public var name: String?
	
	/// Identifies what this mapping refers to
	public var uri: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(identity: String?) {
		self.init(json: nil)
		if nil != identity {
			self.identity = identity
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["comments"] {
				presentKeys.addObject("comments")
				if let val = exist as? String {
					self.comments = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"comments\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identity"] {
				presentKeys.addObject("identity")
				if let val = exist as? String {
					self.identity = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identity\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"identity\" but it is missing"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["uri"] {
				presentKeys.addObject("uri")
				if let val = exist as? String {
					self.uri = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"uri\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let comments = self.comments {
			json["comments"] = comments.asJSON()
		}
		if let identity = self.identity {
			json["identity"] = identity.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let uri = self.uri {
			json["uri"] = uri.asJSON()
		}
		
		return json
	}
}


/**
 *  Snapshot view of the structure.
 *
 *  A snapshot view is expressed in a stand alone form that can be used and interpreted without considering the base
 *  StructureDefinition.
 */
public class StructureDefinitionSnapshot: FHIRElement
{
	override public class var resourceName: String {
		get { return "StructureDefinitionSnapshot" }
	}
	
	/// Definition of elements in the resource (if no StructureDefinition)
	public var element: [ElementDefinition]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(element: [ElementDefinition]?) {
		self.init(json: nil)
		if nil != element {
			self.element = element
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["element"] {
				presentKeys.addObject("element")
				if let val = exist as? [FHIRJSON] {
					self.element = ElementDefinition.from(val, owner: self) as? [ElementDefinition]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"element\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"element\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let element = self.element {
			json["element"] = ElementDefinition.asJSONArray(element)
		}
		
		return json
	}
}

