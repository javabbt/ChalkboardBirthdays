//
//  ListRowViewModel.swift
//  ChalkboardBirthdays
//
//  Created by Rob on 25/11/2021.
//

import SwiftUI

struct ListRowViewModel: View {
    var person: BirthdaysData

    var body: some View {
        HStack {
            // Circle view with Initials
            CircleIconViewModel(person: person, circleDiameter: .constant(69))

            VStack(alignment: .leading, spacing: 6) {
                Text(StringFormatters().nameFormat(firstName: person.name.first, lastName: person.name.last))
                    .font(.footnote)
                    .fontWeight(.semibold)

                Text(StringFormatters().getDOB(date: person.dob.date))
            }
        }
    }
}
