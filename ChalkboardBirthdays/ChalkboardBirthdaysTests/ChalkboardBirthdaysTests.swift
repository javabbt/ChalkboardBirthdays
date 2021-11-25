//
//  ChalkboardBirthdaysTests.swift
//  ChalkboardBirthdaysTests
//
//  Created by Rob on 25/11/2021.
//

import XCTest
@testable import ChalkboardBirthdays

class ChalkboardBirthdaysTests: XCTestCase {

    func testJSONRequestDecoding() throws {
        // Test will fail is reponse from url cannot be decoded to data model

        XCTAssertNoThrow(Results.getData)
    }

}
