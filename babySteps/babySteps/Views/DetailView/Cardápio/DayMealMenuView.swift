//
//  DayMealMenuView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 02/07/24.
//

import SwiftUI

struct DayMealMenuView: View {
    let date: Date
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {

            Text("\(weekDayFormat(date: date))")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.semibold)
            Text("\(getFormattedDate(date: date))")
                .font(.system(.title3, design: .rounded))
                .foregroundStyle(.gray)

            HStack(spacing: 30) {
                MealMenuCardView(foodTime: "Almoço")
                MealMenuCardView(foodTime: "Lanche da Tarde")
            }
        }
    }
    func weekDayFormat(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "pt_BR")
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: date).capitalized
    }

    func getFormattedDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "pt_BR")
        dateFormatter.dateFormat = "d 'de' MMMM"
        return dateFormatter.string(from: date).uppercased()
    }
}

#Preview {
    DayMealMenuView(date: Date())
}
