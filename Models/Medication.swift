//
//  Medication.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Medication) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Definition of a Medication.
 *
 *  Primarily used for identification and definition of Medication, but also covers ingredients and packaging.
 */
@objc public class Medication: DomainResource
{
	override public class var resourceName: String {
		get { return "Medication" }
	}
	
	/// Codes that identify this medication
	public var code: CodeableConcept?
	
	/// True if a brand
	public var isBrand: Bool?
	
	/// product | package
	public var kind: String?
	
	/// Manufacturer of the item
	public var manufacturer: Reference?
	
	/// Common / Commercial name
	public var name: String?
	
	/// Details about packaged medications
	public var package: MedicationPackage?
	
	/// Administrable medication details
	public var product: MedicationProduct?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
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
			if let exist: AnyObject = js["isBrand"] {
				presentKeys.addObject("isBrand")
				if let val = exist as? Bool {
					self.isBrand = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"isBrand\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["kind"] {
				presentKeys.addObject("kind")
				if let val = exist as? String {
					self.kind = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"kind\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["manufacturer"] {
				presentKeys.addObject("manufacturer")
				if let val = exist as? FHIRJSON {
					self.manufacturer = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"manufacturer\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["package"] {
				presentKeys.addObject("package")
				if let val = exist as? FHIRJSON {
					self.package = MedicationPackage(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"package\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["product"] {
				presentKeys.addObject("product")
				if let val = exist as? FHIRJSON {
					self.product = MedicationProduct(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"product\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let isBrand = self.isBrand {
			json["isBrand"] = isBrand.asJSON()
		}
		if let kind = self.kind {
			json["kind"] = kind.asJSON()
		}
		if let manufacturer = self.manufacturer {
			json["manufacturer"] = manufacturer.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let package = self.package {
			json["package"] = package.asJSON()
		}
		if let product = self.product {
			json["product"] = product.asJSON()
		}
		
		return json
	}
}


/**
 *  Details about packaged medications.
 *
 *  Information that only applies to packages (not products).
 */
@objc public class MedicationPackage: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationPackage" }
	}
	
	/// E.g. box, vial, blister-pack
	public var container: CodeableConcept?
	
	/// What is  in the package?
	public var content: [MedicationPackageContent]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["container"] {
				presentKeys.addObject("container")
				if let val = exist as? FHIRJSON {
					self.container = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"container\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["content"] {
				presentKeys.addObject("content")
				if let val = exist as? [FHIRJSON] {
					self.content = MedicationPackageContent.from(val, owner: self) as? [MedicationPackageContent]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"content\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let container = self.container {
			json["container"] = container.asJSON()
		}
		if let content = self.content {
			json["content"] = MedicationPackageContent.asJSONArray(content)
		}
		
		return json
	}
}


/**
 *  What is  in the package?.
 *
 *  A set of components that go to make up the described item.
 */
@objc public class MedicationPackageContent: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationPackageContent" }
	}
	
	/// How many are in the package?
	public var amount: Quantity?
	
	/// A product in the package
	public var item: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(item: Reference?) {
		self.init(json: nil)
		if nil != item {
			self.item = item
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.addObject("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"amount\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.addObject("item")
				if let val = exist as? FHIRJSON {
					self.item = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"item\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"item\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let item = self.item {
			json["item"] = item.asJSON()
		}
		
		return json
	}
}


/**
 *  Administrable medication details.
 *
 *  Information that only applies to products (not packages).
 */
@objc public class MedicationProduct: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationProduct" }
	}
	
	/// Information about a group of medication produced or packaged from one production run.
	public var batch: [MedicationProductBatch]?
	
	/// powder | tablets | carton +
	public var form: CodeableConcept?
	
	/// Active or inactive ingredient
	public var ingredient: [MedicationProductIngredient]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["batch"] {
				presentKeys.addObject("batch")
				if let val = exist as? [FHIRJSON] {
					self.batch = MedicationProductBatch.from(val, owner: self) as? [MedicationProductBatch]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"batch\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["form"] {
				presentKeys.addObject("form")
				if let val = exist as? FHIRJSON {
					self.form = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"form\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["ingredient"] {
				presentKeys.addObject("ingredient")
				if let val = exist as? [FHIRJSON] {
					self.ingredient = MedicationProductIngredient.from(val, owner: self) as? [MedicationProductIngredient]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"ingredient\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let batch = self.batch {
			json["batch"] = MedicationProductBatch.asJSONArray(batch)
		}
		if let form = self.form {
			json["form"] = form.asJSON()
		}
		if let ingredient = self.ingredient {
			json["ingredient"] = MedicationProductIngredient.asJSONArray(ingredient)
		}
		
		return json
	}
}


/**
 *  Information about a group of medication produced or packaged from one production run..
 *
 *  Information about a group of medication produced or packaged from one production run.
 */
@objc public class MedicationProductBatch: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationProductBatch" }
	}
	
	/// When this specific batch of product will expire.
	public var expirationDate: DateTime?
	
	/// The assigned lot number of a batch of the specified product.
	public var lotNumber: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["expirationDate"] {
				presentKeys.addObject("expirationDate")
				if let val = exist as? String {
					self.expirationDate = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"expirationDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["lotNumber"] {
				presentKeys.addObject("lotNumber")
				if let val = exist as? String {
					self.lotNumber = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"lotNumber\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let expirationDate = self.expirationDate {
			json["expirationDate"] = expirationDate.asJSON()
		}
		if let lotNumber = self.lotNumber {
			json["lotNumber"] = lotNumber.asJSON()
		}
		
		return json
	}
}


/**
 *  Active or inactive ingredient.
 *
 *  Identifies a particular constituent of interest in the product.
 */
@objc public class MedicationProductIngredient: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationProductIngredient" }
	}
	
	/// How much ingredient in product
	public var amount: Ratio?
	
	/// The product contained
	public var item: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(item: Reference?) {
		self.init(json: nil)
		if nil != item {
			self.item = item
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.addObject("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Ratio(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"amount\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.addObject("item")
				if let val = exist as? FHIRJSON {
					self.item = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"item\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"item\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let item = self.item {
			json["item"] = item.asJSON()
		}
		
		return json
	}
}

