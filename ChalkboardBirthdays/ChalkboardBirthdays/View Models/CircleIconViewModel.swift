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
    @Binding var textSize: CGFloat

    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color("userGray"))
            
            Text(StringFormatters().getInitials(firstName: person.name.first, lastName: person.name.last))
                .font(.system(size: textSize))
                .fontWeight(.semibold)
                .foregroundColor(.black)
        }
        .frame(width: circleDiameter, height: circleDiameter)
    }
}
