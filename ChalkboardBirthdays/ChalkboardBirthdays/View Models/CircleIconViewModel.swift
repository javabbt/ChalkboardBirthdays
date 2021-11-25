//
//  CircleIconViewModel.swift
//  ChalkboardBirthdays
//
//  Created by Rob on 25/11/2021.
//

import SwiftUI

struct CircleIconViewModel: View {
    var person: BirthdaysData

    @Binding var circleDiameter: CGFloat

    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color("userGray"))
            Text(StringFormatters().getInitials(firstName: person.name.first, lastName: person.name.last))
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(width: circleDiameter, height: circleDiameter)
    }
}
