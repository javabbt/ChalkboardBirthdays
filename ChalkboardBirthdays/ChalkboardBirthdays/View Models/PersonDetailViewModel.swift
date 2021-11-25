//
//  PersonDetailViewModel.swift
//  ChalkboardBirthdays
//
//  Created by Rob on 25/11/2021.
//

import SwiftUI

struct PersonDetailViewModel: View {
    @Environment(\.colorScheme) var scheme
    @EnvironmentObject var results: Results
    var person: BirthdaysData

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            CircleIconViewModel(person: person, circleDiameter: .constant(137), textSize: .constant(64))

            Text(StringFormatters().nameFormat(firstName: person.name.first, lastName: person.name.last))
                .font(.largeTitle)
                .fontWeight(.semibold)

            Text("\(person.dob.age) YEARS OLD")
                .font(.footnote)
                .fontWeight(.bold)
                .padding(.bottom)

            NavigationLink(destination: ListViewModel(results: results)) {
                ZStack {
                    RoundedRectangle(cornerRadius: 6, style: .circular)
                        .foregroundColor(.primary)

                    Text("GO BACK")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(scheme == .dark ? .black : .white)
                }
                .frame(height: 52)
                .padding(.horizontal)
            }

            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
}
