//
//  ImmunizationRecommendation.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Guidance or advice relating to an immunization.
 *
 *  A patient's point-of-time immunization status and recommendation with optional supporting justification.
 */
public class ImmunizationRecommendation: DomainResource
{
	override public class var resourceName: String {
		get { return "ImmunizationRecommendation" }
	}
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Who this profile is for
	public var patient: Reference?
	
	/// Vaccine administration recommendations
	public var recommendation: [ImmunizationRecommendationRecommendation]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(patient: Reference?, recommendation: [ImmunizationRecommendationRecommendation]?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != recommendation {
			self.recommendation = recommendation
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.addObject("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patient\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"patient\" but it is missing"))
			}
			if let exist: AnyObject = js["recommendation"] {
				presentKeys.addObject("recommendation")
				if let val = exist as? [FHIRJSON] {
					self.recommendation = ImmunizationRecommendationRecommendation.from(val, owner: self) as? [ImmunizationRecommendationRecommendation]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"recommendation\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"recommendation\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let recommendation = self.recommendation {
			json["recommendation"] = ImmunizationRecommendationRecommendation.asJSONArray(recommendation)
		}
		
		return json
	}
}


/**
 *  Vaccine administration recommendations.
 */
public class ImmunizationRecommendationRecommendation: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImmunizationRecommendationRecommendation" }
	}
	
	/// Date recommendation created
	public var date: DateTime?
	
	/// Dates governing proposed immunization
	public var dateCriterion: [ImmunizationRecommendationRecommendationDateCriterion]?
	
	/// Recommended dose number
	public var doseNumber: UInt?
	
	/// Vaccine administration status
	public var forecastStatus: CodeableConcept?
	
	/// Protocol used by recommendation
	public var protocol_fhir: ImmunizationRecommendationRecommendationProtocol?
	
	/// Past immunizations supporting recommendation
	public var supportingImmunization: [Reference]?
	
	/// Patient observations supporting recommendation
	public var supportingPatientInformation: [Reference]?
	
	/// Vaccine recommendation applies to
	public var vaccineType: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(date: DateTime?, forecastStatus: CodeableConcept?, vaccineType: CodeableConcept?) {
		self.init(json: nil)
		if nil != date {
			self.date = date
		}
		if nil != forecastStatus {
			self.forecastStatus = forecastStatus
		}
		if nil != vaccineType {
			self.vaccineType = vaccineType
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"date\" but it is missing"))
			}
			if let exist: AnyObject = js["dateCriterion"] {
				presentKeys.addObject("dateCriterion")
				if let val = exist as? [FHIRJSON] {
					self.dateCriterion = ImmunizationRecommendationRecommendationDateCriterion.from(val, owner: self) as? [ImmunizationRecommendationRecommendationDateCriterion]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"dateCriterion\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["doseNumber"] {
				presentKeys.addObject("doseNumber")
				if let val = exist as? UInt {
					self.doseNumber = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"doseNumber\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["forecastStatus"] {
				presentKeys.addObject("forecastStatus")
				if let val = exist as? FHIRJSON {
					self.forecastStatus = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"forecastStatus\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"forecastStatus\" but it is missing"))
			}
			if let exist: AnyObject = js["protocol"] {
				presentKeys.addObject("protocol")
				if let val = exist as? FHIRJSON {
					self.protocol_fhir = ImmunizationRecommendationRecommendationProtocol(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"protocol\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["supportingImmunization"] {
				presentKeys.addObject("supportingImmunization")
				if let val = exist as? [FHIRJSON] {
					self.supportingImmunization = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"supportingImmunization\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["supportingPatientInformation"] {
				presentKeys.addObject("supportingPatientInformation")
				if let val = exist as? [FHIRJSON] {
					self.supportingPatientInformation = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"supportingPatientInformation\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["vaccineType"] {
				presentKeys.addObject("vaccineType")
				if let val = exist as? FHIRJSON {
					self.vaccineType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"vaccineType\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"vaccineType\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let dateCriterion = self.dateCriterion {
			json["dateCriterion"] = ImmunizationRecommendationRecommendationDateCriterion.asJSONArray(dateCriterion)
		}
		if let doseNumber = self.doseNumber {
			json["doseNumber"] = doseNumber.asJSON()
		}
		if let forecastStatus = self.forecastStatus {
			json["forecastStatus"] = forecastStatus.asJSON()
		}
		if let protocol_fhir = self.protocol_fhir {
			json["protocol"] = protocol_fhir.asJSON()
		}
		if let supportingImmunization = self.supportingImmunization {
			json["supportingImmunization"] = Reference.asJSONArray(supportingImmunization)
		}
		if let supportingPatientInformation = self.supportingPatientInformation {
			json["supportingPatientInformation"] = Reference.asJSONArray(supportingPatientInformation)
		}
		if let vaccineType = self.vaccineType {
			json["vaccineType"] = vaccineType.asJSON()
		}
		
		return json
	}
}


/**
 *  Dates governing proposed immunization.
 *
 *  Vaccine date recommendations - e.g. earliest date to administer, latest date to administer, etc.
 */
public class ImmunizationRecommendationRecommendationDateCriterion: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImmunizationRecommendationRecommendationDateCriterion" }
	}
	
	/// Type of date
	public var code: CodeableConcept?
	
	/// Recommended date
	public var value: DateTime?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: CodeableConcept?, value: DateTime?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != value {
			self.value = value
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.addObject("value")
				if let val = exist as? String {
					self.value = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"value\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"value\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Protocol used by recommendation.
 *
 *  Contains information about the protocol under which the vaccine was administered.
 */
public class ImmunizationRecommendationRecommendationProtocol: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImmunizationRecommendationRecommendationProtocol" }
	}
	
	/// Who is responsible for protocol
	public var authority: Reference?
	
	/// Protocol details
	public var description_fhir: String?
	
	/// Number of dose within sequence
	public var doseSequence: Int?
	
	/// Name of vaccination series
	public var series: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["authority"] {
				presentKeys.addObject("authority")
				if let val = exist as? FHIRJSON {
					self.authority = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"authority\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["doseSequence"] {
				presentKeys.addObject("doseSequence")
				if let val = exist as? Int {
					self.doseSequence = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"doseSequence\" to be `Int`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["series"] {
				presentKeys.addObject("series")
				if let val = exist as? String {
					self.series = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"series\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let authority = self.authority {
			json["authority"] = authority.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let doseSequence = self.doseSequence {
			json["doseSequence"] = doseSequence.asJSON()
		}
		if let series = self.series {
			json["series"] = series.asJSON()
		}
		
		return json
	}
}

