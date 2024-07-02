//
//  CardapioView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 27/06/24.
//

import SwiftUI


struct MealMenuView: View {
    var body: some View {
        ScrollView {
        VStack(spacing: 30) {
                DayMealMenuView(date: Date())
                DayMealMenuView(date: Date())
                DayMealMenuView(date: Date())
                DayMealMenuView(date: Date())
                DayMealMenuView(date: Date())
                DayMealMenuView(date: Date())
                DayMealMenuView(date: Date())
            }.padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        }.background(Color.detailViewBackground)
            .frame(maxWidth: .infinity)
            .navigationTitle("Cardápio")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("PlusToolBarClicked")
                    } label: {
                        Image(systemName: "plus")
                            .foregroundStyle(.accent)
                    }
                }
            })
    }
}


#Preview {
    MealMenuView()
}
