//
//  Specimen.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Specimen) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Sample for analysis.
 */
public class Specimen: DomainResource
{
	override public class var resourceName: String {
		get { return "Specimen" }
	}
	
	/// Identifier assigned by the lab
	public var accessionIdentifier: Identifier?
	
	/// Collection details
	public var collection: SpecimenCollection?
	
	/// Direct container of specimen (tube/slide, etc)
	public var container: [SpecimenContainer]?
	
	/// External Identifier
	public var identifier: [Identifier]?
	
	/// Specimen from which this specimen originated
	public var parent: [Reference]?
	
	/// The time when specimen was received for processing
	public var receivedTime: DateTime?
	
	/// Where the specimen came from. This may be from the patient(s) or from the environment or a device
	public var subject: Reference?
	
	/// Treatment and processing step details
	public var treatment: [SpecimenTreatment]?
	
	/// Kind of material that forms the specimen
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(subject: Reference?) {
		self.init(json: nil)
		if nil != subject {
			self.subject = subject
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["accessionIdentifier"] {
				presentKeys.addObject("accessionIdentifier")
				if let val = exist as? FHIRJSON {
					self.accessionIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"accessionIdentifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["collection"] {
				presentKeys.addObject("collection")
				if let val = exist as? FHIRJSON {
					self.collection = SpecimenCollection(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"collection\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["container"] {
				presentKeys.addObject("container")
				if let val = exist as? [FHIRJSON] {
					self.container = SpecimenContainer.from(val, owner: self) as? [SpecimenContainer]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"container\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["parent"] {
				presentKeys.addObject("parent")
				if let val = exist as? [FHIRJSON] {
					self.parent = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"parent\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["receivedTime"] {
				presentKeys.addObject("receivedTime")
				if let val = exist as? String {
					self.receivedTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"receivedTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.addObject("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subject\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"subject\" but it is missing"))
			}
			if let exist: AnyObject = js["treatment"] {
				presentKeys.addObject("treatment")
				if let val = exist as? [FHIRJSON] {
					self.treatment = SpecimenTreatment.from(val, owner: self) as? [SpecimenTreatment]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"treatment\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let accessionIdentifier = self.accessionIdentifier {
			json["accessionIdentifier"] = accessionIdentifier.asJSON()
		}
		if let collection = self.collection {
			json["collection"] = collection.asJSON()
		}
		if let container = self.container {
			json["container"] = SpecimenContainer.asJSONArray(container)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let parent = self.parent {
			json["parent"] = Reference.asJSONArray(parent)
		}
		if let receivedTime = self.receivedTime {
			json["receivedTime"] = receivedTime.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let treatment = self.treatment {
			json["treatment"] = SpecimenTreatment.asJSONArray(treatment)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Collection details.
 *
 *  Details concerning the specimen collection.
 */
public class SpecimenCollection: FHIRElement
{
	override public class var resourceName: String {
		get { return "SpecimenCollection" }
	}
	
	/// Anatomical collection site
	public var bodySiteCodeableConcept: CodeableConcept?
	
	/// Anatomical collection site
	public var bodySiteReference: Reference?
	
	/// Collection time
	public var collectedDateTime: DateTime?
	
	/// Collection time
	public var collectedPeriod: Period?
	
	/// Who collected the specimen
	public var collector: Reference?
	
	/// Collector comments
	public var comment: [String]?
	
	/// Technique used to perform collection
	public var method: CodeableConcept?
	
	/// The quantity of specimen collected
	public var quantity: Quantity?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["bodySiteCodeableConcept"] {
				presentKeys.addObject("bodySiteCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.bodySiteCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bodySiteCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["bodySiteReference"] {
				presentKeys.addObject("bodySiteReference")
				if let val = exist as? FHIRJSON {
					self.bodySiteReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bodySiteReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["collectedDateTime"] {
				presentKeys.addObject("collectedDateTime")
				if let val = exist as? String {
					self.collectedDateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"collectedDateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["collectedPeriod"] {
				presentKeys.addObject("collectedPeriod")
				if let val = exist as? FHIRJSON {
					self.collectedPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"collectedPeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["collector"] {
				presentKeys.addObject("collector")
				if let val = exist as? FHIRJSON {
					self.collector = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"collector\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["comment"] {
				presentKeys.addObject("comment")
				if let val = exist as? [String] {
					self.comment = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"comment\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["method"] {
				presentKeys.addObject("method")
				if let val = exist as? FHIRJSON {
					self.method = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"method\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.addObject("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"quantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let bodySiteCodeableConcept = self.bodySiteCodeableConcept {
			json["bodySiteCodeableConcept"] = bodySiteCodeableConcept.asJSON()
		}
		if let bodySiteReference = self.bodySiteReference {
			json["bodySiteReference"] = bodySiteReference.asJSON()
		}
		if let collectedDateTime = self.collectedDateTime {
			json["collectedDateTime"] = collectedDateTime.asJSON()
		}
		if let collectedPeriod = self.collectedPeriod {
			json["collectedPeriod"] = collectedPeriod.asJSON()
		}
		if let collector = self.collector {
			json["collector"] = collector.asJSON()
		}
		if let comment = self.comment {
			var arr = [AnyObject]()
			for val in comment {
				arr.append(val.asJSON())
			}
			json["comment"] = arr
		}
		if let method = self.method {
			json["method"] = method.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		
		return json
	}
}


/**
 *  Direct container of specimen (tube/slide, etc).
 *
 *  The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is not
 *  addressed here.
 */
public class SpecimenContainer: FHIRElement
{
	override public class var resourceName: String {
		get { return "SpecimenContainer" }
	}
	
	/// Additive associated with container
	public var additiveCodeableConcept: CodeableConcept?
	
	/// Additive associated with container
	public var additiveReference: Reference?
	
	/// Container volume or size
	public var capacity: Quantity?
	
	/// Textual description of the container
	public var description_fhir: String?
	
	/// Id for the container
	public var identifier: [Identifier]?
	
	/// Quantity of specimen within container
	public var specimenQuantity: Quantity?
	
	/// Kind of container directly associated with specimen
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["additiveCodeableConcept"] {
				presentKeys.addObject("additiveCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.additiveCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"additiveCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["additiveReference"] {
				presentKeys.addObject("additiveReference")
				if let val = exist as? FHIRJSON {
					self.additiveReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"additiveReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["capacity"] {
				presentKeys.addObject("capacity")
				if let val = exist as? FHIRJSON {
					self.capacity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"capacity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["specimenQuantity"] {
				presentKeys.addObject("specimenQuantity")
				if let val = exist as? FHIRJSON {
					self.specimenQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"specimenQuantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let additiveCodeableConcept = self.additiveCodeableConcept {
			json["additiveCodeableConcept"] = additiveCodeableConcept.asJSON()
		}
		if let additiveReference = self.additiveReference {
			json["additiveReference"] = additiveReference.asJSON()
		}
		if let capacity = self.capacity {
			json["capacity"] = capacity.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let specimenQuantity = self.specimenQuantity {
			json["specimenQuantity"] = specimenQuantity.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Treatment and processing step details.
 *
 *  Details concerning treatment and processing steps for the specimen.
 */
public class SpecimenTreatment: FHIRElement
{
	override public class var resourceName: String {
		get { return "SpecimenTreatment" }
	}
	
	/// Material used in the processing step
	public var additive: [Reference]?
	
	/// Textual description of procedure
	public var description_fhir: String?
	
	/// Indicates the treatment or processing step  applied to the specimen
	public var procedure: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["additive"] {
				presentKeys.addObject("additive")
				if let val = exist as? [FHIRJSON] {
					self.additive = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"additive\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["procedure"] {
				presentKeys.addObject("procedure")
				if let val = exist as? FHIRJSON {
					self.procedure = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"procedure\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let additive = self.additive {
			json["additive"] = Reference.asJSONArray(additive)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let procedure = self.procedure {
			json["procedure"] = procedure.asJSON()
		}
		
		return json
	}
}

