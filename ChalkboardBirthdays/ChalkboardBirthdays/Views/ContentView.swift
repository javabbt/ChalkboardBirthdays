//
//  ContentView.swift
//  ChalkboardBirthdays
//
//  Created by Rob on 25/11/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var results: Results

    var body: some View {
        NavigationView {
            ListViewModel(results: results)
        }
    }
}
