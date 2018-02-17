//: Playground - noun: a place where people can play

import UIKit

let jsonDict = [
    "name" : "Swift",
    "developer" : "Apple Inc.",
    "releaseDate" : [
        "format":"longStyle",
        "date": "June 2, 2014"
    ],
    "typing": ["static", "strong", "inferred"],
    "OS": ["Mac OS", "Linux", "FreeBSD"],
    "license": "Apache License 2.0",
    "website": "swift.org"
    ] as [String : Any]
if JSONSerialization.isValidJSONObject(jsonDict) {
    if let data = try? JSONSerialization.data(withJSONObject: jsonDict, options: []) {
        print("JSON data object is:\(data)")
        print("JSON: \(jsonDict)")
    }
}

