//
//  QuestionnaireAnswers.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/QuestionnaireAnswers) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A structured set of questions and their answers.
 *
 *  A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets,
 *  corresponding to the structure of the grouping of the underlying questions.
 */
public class QuestionnaireAnswers: DomainResource
{
	override public class var resourceName: String {
		get { return "QuestionnaireAnswers" }
	}
	
	/// Person who received and recorded the answers
	public var author: Reference?
	
	/// Date this version was authored
	public var authored: DateTime?
	
	/// Primary encounter during which the answers were collected
	public var encounter: Reference?
	
	/// Grouped questions
	public var group: QuestionnaireAnswersGroup?
	
	/// Unique id for this set of answers
	public var identifier: Identifier?
	
	/// Form being answered
	public var questionnaire: Reference?
	
	/// The person who answered the questions
	public var source: Reference?
	
	/// in-progress | completed | amended
	public var status: String?
	
	/// The subject of the questions
	public var subject: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["author"] {
				presentKeys.addObject("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"author\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["authored"] {
				presentKeys.addObject("authored")
				if let val = exist as? String {
					self.authored = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"authored\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.addObject("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"encounter\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["group"] {
				presentKeys.addObject("group")
				if let val = exist as? FHIRJSON {
					self.group = QuestionnaireAnswersGroup(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"group\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["questionnaire"] {
				presentKeys.addObject("questionnaire")
				if let val = exist as? FHIRJSON {
					self.questionnaire = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"questionnaire\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["source"] {
				presentKeys.addObject("source")
				if let val = exist as? FHIRJSON {
					self.source = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"source\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["subject"] {
				presentKeys.addObject("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subject\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let authored = self.authored {
			json["authored"] = authored.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let group = self.group {
			json["group"] = group.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let questionnaire = self.questionnaire {
			json["questionnaire"] = questionnaire.asJSON()
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		
		return json
	}
}


/**
 *  Grouped questions.
 *
 *  A group of questions to a possibly similarly grouped set of questions in the questionnaire answers.
 */
public class QuestionnaireAnswersGroup: FHIRElement
{
	override public class var resourceName: String {
		get { return "QuestionnaireAnswersGroup" }
	}
	
	/// Nested questionnaire answers group
	public var group: [QuestionnaireAnswersGroup]?
	
	/// Corresponding group within Questionnaire
	public var linkId: String?
	
	/// Questions in this group
	public var question: [QuestionnaireAnswersGroupQuestion]?
	
	/// The subject this group's answers are about
	public var subject: Reference?
	
	/// Additional text for the group
	public var text: String?
	
	/// Name for this group
	public var title: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["group"] {
				presentKeys.addObject("group")
				if let val = exist as? [FHIRJSON] {
					self.group = QuestionnaireAnswersGroup.from(val, owner: self) as? [QuestionnaireAnswersGroup]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"group\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["linkId"] {
				presentKeys.addObject("linkId")
				if let val = exist as? String {
					self.linkId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"linkId\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["question"] {
				presentKeys.addObject("question")
				if let val = exist as? [FHIRJSON] {
					self.question = QuestionnaireAnswersGroupQuestion.from(val, owner: self) as? [QuestionnaireAnswersGroupQuestion]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"question\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["text"] {
				presentKeys.addObject("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"text\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["title"] {
				presentKeys.addObject("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"title\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let group = self.group {
			json["group"] = QuestionnaireAnswersGroup.asJSONArray(group)
		}
		if let linkId = self.linkId {
			json["linkId"] = linkId.asJSON()
		}
		if let question = self.question {
			json["question"] = QuestionnaireAnswersGroupQuestion.asJSONArray(question)
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		
		return json
	}
}


/**
 *  Questions in this group.
 *
 *  Set of questions within this group. The order of questions within the group is relevant.
 */
public class QuestionnaireAnswersGroupQuestion: FHIRElement
{
	override public class var resourceName: String {
		get { return "QuestionnaireAnswersGroupQuestion" }
	}
	
	/// The response(s) to the question
	public var answer: [QuestionnaireAnswersGroupQuestionAnswer]?
	
	/// Nested questionnaire group
	public var group: [QuestionnaireAnswersGroup]?
	
	/// Corresponding question within Questionnaire
	public var linkId: String?
	
	/// Text of the question as it is shown to the user
	public var text: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["answer"] {
				presentKeys.addObject("answer")
				if let val = exist as? [FHIRJSON] {
					self.answer = QuestionnaireAnswersGroupQuestionAnswer.from(val, owner: self) as? [QuestionnaireAnswersGroupQuestionAnswer]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"answer\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["group"] {
				presentKeys.addObject("group")
				if let val = exist as? [FHIRJSON] {
					self.group = QuestionnaireAnswersGroup.from(val, owner: self) as? [QuestionnaireAnswersGroup]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"group\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["linkId"] {
				presentKeys.addObject("linkId")
				if let val = exist as? String {
					self.linkId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"linkId\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.addObject("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"text\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let answer = self.answer {
			json["answer"] = QuestionnaireAnswersGroupQuestionAnswer.asJSONArray(answer)
		}
		if let group = self.group {
			json["group"] = QuestionnaireAnswersGroup.asJSONArray(group)
		}
		if let linkId = self.linkId {
			json["linkId"] = linkId.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}


/**
 *  The response(s) to the question.
 *
 *  The respondent's answer(s) to the question.
 */
public class QuestionnaireAnswersGroupQuestionAnswer: FHIRElement
{
	override public class var resourceName: String {
		get { return "QuestionnaireAnswersGroupQuestionAnswer" }
	}
	
	/// Single-valued answer to the question
	public var valueAttachment: Attachment?
	
	/// Single-valued answer to the question
	public var valueBoolean: Bool?
	
	/// Single-valued answer to the question
	public var valueCoding: Coding?
	
	/// Single-valued answer to the question
	public var valueDate: Date?
	
	/// Single-valued answer to the question
	public var valueDateTime: DateTime?
	
	/// Single-valued answer to the question
	public var valueDecimal: NSDecimalNumber?
	
	/// Single-valued answer to the question
	public var valueInstant: Instant?
	
	/// Single-valued answer to the question
	public var valueInteger: Int?
	
	/// Single-valued answer to the question
	public var valueQuantity: Quantity?
	
	/// Single-valued answer to the question
	public var valueReference: Reference?
	
	/// Single-valued answer to the question
	public var valueString: String?
	
	/// Single-valued answer to the question
	public var valueTime: Time?
	
	/// Single-valued answer to the question
	public var valueUri: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["valueAttachment"] {
				presentKeys.addObject("valueAttachment")
				if let val = exist as? FHIRJSON {
					self.valueAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueAttachment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueBoolean"] {
				presentKeys.addObject("valueBoolean")
				if let val = exist as? Bool {
					self.valueBoolean = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueBoolean\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueCoding"] {
				presentKeys.addObject("valueCoding")
				if let val = exist as? FHIRJSON {
					self.valueCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueCoding\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueDate"] {
				presentKeys.addObject("valueDate")
				if let val = exist as? String {
					self.valueDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueDateTime"] {
				presentKeys.addObject("valueDateTime")
				if let val = exist as? String {
					self.valueDateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueDateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueDecimal"] {
				presentKeys.addObject("valueDecimal")
				if let val = exist as? NSNumber {
					self.valueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueDecimal\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueInstant"] {
				presentKeys.addObject("valueInstant")
				if let val = exist as? String {
					self.valueInstant = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueInstant\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueInteger"] {
				presentKeys.addObject("valueInteger")
				if let val = exist as? Int {
					self.valueInteger = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueInteger\" to be `Int`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueQuantity"] {
				presentKeys.addObject("valueQuantity")
				if let val = exist as? FHIRJSON {
					self.valueQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueQuantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueReference"] {
				presentKeys.addObject("valueReference")
				if let val = exist as? FHIRJSON {
					self.valueReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueString"] {
				presentKeys.addObject("valueString")
				if let val = exist as? String {
					self.valueString = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueString\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueTime"] {
				presentKeys.addObject("valueTime")
				if let val = exist as? String {
					self.valueTime = Time(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueUri"] {
				presentKeys.addObject("valueUri")
				if let val = exist as? String {
					self.valueUri = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueUri\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON()
		}
		if let valueDate = self.valueDate {
			json["valueDate"] = valueDate.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueInstant = self.valueInstant {
			json["valueInstant"] = valueInstant.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON()
		}
		if let valueReference = self.valueReference {
			json["valueReference"] = valueReference.asJSON()
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		return json
	}
}

