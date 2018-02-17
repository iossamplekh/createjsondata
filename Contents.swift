//: Playground - noun: a place where people can play

import UIKit

let jsonDict = [
    "newsObj" : [
                "name":"nameValue",
                "newsTypeDesEn":"newsTypeValue",
                "desEn":"desEnValue"
                ],
    "newsTypeObj" :[
                "desEn":["desEnValue","desEnValue2","desEnValue3"]
                ],
    "authorObj" : [
                "name":["nameValue","nameValue2","nameValue3"]
            ]
    ] as [String : Any]
if JSONSerialization.isValidJSONObject(jsonDict) {
    if let data = try? JSONSerialization.data(withJSONObject: jsonDict, options: []) {
        print("JSON data object is:\(data)")
        print("JSON: \(jsonDict)")
    }
}

