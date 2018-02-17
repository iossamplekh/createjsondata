//: Playground - noun: a place where people can play

import UIKit

let jsonDict = [
    "newsObj" : [
                "name":"nameValue",
                "newsTypeDesEn":"newsTypeValue",
                "desEn":"desEnValue"
                ],
    "newsTypeObj" : [
                "desEn":"desEnValue"
                ],
    "authorObj" : [
                "name":"nameValue"
            ]
    ] as [String : Any]
if JSONSerialization.isValidJSONObject(jsonDict) {
    if let data = try? JSONSerialization.data(withJSONObject: jsonDict, options: []) {
        print("JSON data object is:\(data)")
        print("JSON: \(jsonDict)")
    }
}

