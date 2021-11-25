//
//  BirthdaysDataModel.swift
//  ChalkboardBirthdays
//
//  Created by Rob on 25/11/2021.
//

import Foundation

struct Response: Codable {
    var results: [BirthdaysData]
}

struct BirthdaysData: Codable {
    var id = UUID()
    var name: NameData
    var dob: DOBData

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case dob = "dob"
    }
}

struct NameData: Codable {
    var title: String
    var first: String
    var last: String
}

struct DOBData: Codable {
    var date: String
    var age: Int
}
