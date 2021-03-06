//
//  Subscription.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Subscription) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A server push subscription criteria.
 *
 *  The subscription resource is used to define a push based subscription from a server to another system. Once a
 *  subscription is registered with the server, the server checks every resource that is created or updated, and if the
 *  resource matches the given criteria, it sends a message on the defined "channel" so that another system is able to
 *  take an appropriate action.
 */
public class Subscription: DomainResource
{
	override public class var resourceName: String {
		get { return "Subscription" }
	}
	
	/// The channel on which to report matches to the criteria
	public var channel: SubscriptionChannel?
	
	/// Contact details for source (e.g. troubleshooting)
	public var contact: [ContactPoint]?
	
	/// Rule for server push criteria
	public var criteria: String?
	
	/// When to automatically delete the subscription
	public var end: Instant?
	
	/// Latest error note
	public var error: String?
	
	/// Description of why this subscription was created
	public var reason: String?
	
	/// requested | active | error | off
	public var status: String?
	
	/// A tag to add to matching resources
	public var tag: [Coding]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(channel: SubscriptionChannel?, criteria: String?, reason: String?, status: String?) {
		self.init(json: nil)
		if nil != channel {
			self.channel = channel
		}
		if nil != criteria {
			self.criteria = criteria
		}
		if nil != reason {
			self.reason = reason
		}
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["channel"] {
				presentKeys.addObject("channel")
				if let val = exist as? FHIRJSON {
					self.channel = SubscriptionChannel(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"channel\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"channel\" but it is missing"))
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.addObject("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contact\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["criteria"] {
				presentKeys.addObject("criteria")
				if let val = exist as? String {
					self.criteria = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"criteria\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"criteria\" but it is missing"))
			}
			if let exist: AnyObject = js["end"] {
				presentKeys.addObject("end")
				if let val = exist as? String {
					self.end = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"end\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["error"] {
				presentKeys.addObject("error")
				if let val = exist as? String {
					self.error = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"error\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.addObject("reason")
				if let val = exist as? String {
					self.reason = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reason\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"reason\" but it is missing"))
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
			if let exist: AnyObject = js["tag"] {
				presentKeys.addObject("tag")
				if let val = exist as? [FHIRJSON] {
					self.tag = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"tag\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let channel = self.channel {
			json["channel"] = channel.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = ContactPoint.asJSONArray(contact)
		}
		if let criteria = self.criteria {
			json["criteria"] = criteria.asJSON()
		}
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let error = self.error {
			json["error"] = error.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let tag = self.tag {
			json["tag"] = Coding.asJSONArray(tag)
		}
		
		return json
	}
}


/**
 *  The channel on which to report matches to the criteria.
 *
 *  Details where to send notifications when resources are received that meet the criteria.
 */
public class SubscriptionChannel: FHIRElement
{
	override public class var resourceName: String {
		get { return "SubscriptionChannel" }
	}
	
	/// Where the channel points to
	public var endpoint: NSURL?
	
	/// Usage depends on the channel type
	public var header: String?
	
	/// Mimetype to send, or blank for no payload
	public var payload: String?
	
	/// rest-hook | websocket | email | sms | message
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(payload: String?, type: String?) {
		self.init(json: nil)
		if nil != payload {
			self.payload = payload
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["endpoint"] {
				presentKeys.addObject("endpoint")
				if let val = exist as? String {
					self.endpoint = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"endpoint\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["header"] {
				presentKeys.addObject("header")
				if let val = exist as? String {
					self.header = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"header\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["payload"] {
				presentKeys.addObject("payload")
				if let val = exist as? String {
					self.payload = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"payload\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"payload\" but it is missing"))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.asJSON()
		}
		if let header = self.header {
			json["header"] = header.asJSON()
		}
		if let payload = self.payload {
			json["payload"] = payload.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

