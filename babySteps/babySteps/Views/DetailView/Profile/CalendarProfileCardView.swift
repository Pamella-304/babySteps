//
//  CalendarProfileCardView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 02/07/24.
//

import SwiftUI

struct CalendarProfileCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Segunda-Feira")
                .font(.system(.subheadline, design: .rounded))
                .foregroundStyle(Color.bluePrimary)
                .bold()
            Text("28")
                .font(.system(size: 36, weight: .medium, design: .rounded))
            HStack(alignment: .top, spacing: 5) {
                Capsule()
                    .frame(maxWidth: 4, maxHeight: .infinity)
                Text("Reunião de pais e mestres | 14h")
                    .font(.system(.body , design: .rounded, weight: .regular))

            }.foregroundStyle(Color.orangePrimary)
            Text("mais 1 evento")
                .font(.system(.body , design: .rounded, weight: .regular))
                .foregroundStyle(Color.gray)
        }.frame(width: 185, height: 155, alignment: .topLeading)
            .padding()
            .background(Color.white)
            .clipShape(.rect(cornerRadius: 16))
    }
}
#Preview {
    CalendarProfileCardView()
}
