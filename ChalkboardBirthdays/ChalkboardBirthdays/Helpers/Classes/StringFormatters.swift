//
//  StringFormatters.swift
//  ChalkboardBirthdays
//
//  Created by Rob on 25/11/2021.
//

import Foundation

class StringFormatters {
    func getInitials(firstName: String, lastName: String) -> String {
        if firstName != "" && lastName != "" {
            return "\(firstName.prefix(1))\(lastName.prefix(1))"
        } else {
            return "\(firstName.prefix(1))"
        }
    }

    func nameFormat(firstName: String, lastName: String) -> String {
        return "\(firstName) \(lastName)"
    }

    func getDOB(date: String) -> String {
        let dobFormatter = DateFormatter.dateOfBirth
        let dobDateFormatter = DateFormatter.dobDate

        let dateSubstring: String = String(date.prefix(10))
        let dobDate = dobDateFormatter.date(from: dateSubstring) ?? Date()
        let dobString = dobFormatter.string(from: dobDate)

        return dobString
    }
}
