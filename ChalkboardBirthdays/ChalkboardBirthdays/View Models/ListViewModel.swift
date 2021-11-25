//
//  ListViewModel.swift
//  ChalkboardBirthdays
//
//  Created by Rob on 25/11/2021.
//

import SwiftUI

struct ListViewModel: View {
    @ObservedObject var results: Results

    var body: some View {
        List(results.responseResults, id: \.id) { person in
            NavigationLink(destination: PersonDetailViewModel(person: person)){
                ListRowViewModel(person: person)
            }
        }
        .listStyle(.plain)
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Birthdays")
        .navigationBarTitleDisplayMode(.inline)
    }
}
