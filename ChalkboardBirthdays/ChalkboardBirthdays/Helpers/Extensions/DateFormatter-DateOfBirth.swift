//
//  DateFormatter-DateOfBirth.swift
//  ChalkboardBirthdays
//
//  Created by Rob on 25/11/2021.
//

import Foundation

extension DateFormatter {
    static var dateOfBirth: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        return formatter
    }
}
