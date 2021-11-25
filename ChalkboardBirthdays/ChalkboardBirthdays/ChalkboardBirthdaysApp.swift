//
//  ChalkboardBirthdaysApp.swift
//  ChalkboardBirthdays
//
//  Created by Rob on 25/11/2021.
//

import SwiftUI

@main
struct ChalkboardBirthdaysApp: App {
    @StateObject var results: Results

    init() {
        let results = Results()
        _results = StateObject(wrappedValue: results)
    }

    var body: some Scene {
        WindowGroup {
            ContentView(results: results)
                .environmentObject(results)
                .task {
                    await results.getData()
                }
        }
    }
}
