//: Playground - noun: a place where people can play

import UIKit
class NewsHelper{
    var name: String?
    var newsTypeDesEn: String?
    var desEn: String?
}

var newsObject = NewsHelper()
newsObject.name = "NnameValue"
newsObject.newsTypeDesEn = "NnewsTypeValue"
newsObject.desEn = "NdesEnValue"

var newsTypeObjectArr = [String]()
newsTypeObjectArr.append("AdesEnValue")
newsTypeObjectArr.append("AdesEnValue2")
newsTypeObjectArr.append("AdesEnValue3")

var authorObjectArr = [String]()
authorObjectArr.append("nameValue")
authorObjectArr.append("nameValue2")
authorObjectArr.append("nameValue3")

let jsonDict = [
    "newsObj" : [
                "name":newsObject.name!,
                "newsTypeDesEn":newsObject.newsTypeDesEn!,
                "desEn":newsObject.desEn!
                ],
    "newsTypeObj" : [
                "desEn":newsTypeObjectArr
                ],
    "authorObj" : [
                "name":authorObjectArr
            ]
    ] as [String : Any]
if JSONSerialization.isValidJSONObject(jsonDict) {
    if let data = try? JSONSerialization.data(withJSONObject: jsonDict, options: []) {
        print("JSON data object is:\(data)")
        print("JSON: \(jsonDict)")
    }
}

