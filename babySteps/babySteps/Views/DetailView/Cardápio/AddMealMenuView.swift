//
//  AddMealMenuView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 02/07/24.
//

import SwiftUI

struct AddMealMenuView: View {
    @Bindable var viewModel: MealMenuViewModel
    var body: some View {

            Form {
                Section {
                    DatePicker("Data",
                               selection: $viewModel.foodMenu.menuDate,
                               in: Date()...Date().oneMonthAfter,
                               displayedComponents: .date)
                    Picker("Refeição", selection: $viewModel.foodMenu.mealType) {
                        ForEach(FoodMenu.MealTypes.allCases, id: \.self) {
                            Text($0.mealName)
                                .foregroundStyle(Color.accentColor)

                        }
                        ForEach(Array(viewModel.foodMenu.foodType.keys), id: \.self) { item in
                            TextField(item.foodTypeName, text: Binding(get: {
                                viewModel.foodMenu.foodType[item]!
                            }, set: { value in
                                viewModel.foodMenu.foodType[item] = value
                            }))
                        }
                    }
                }.padding(3)
            }.listRowSpacing(10)
    }
}

//#Preview {
//        AddMealMenuView(viewModel: MealMenuViewModel(mealDate: Date(), mealType: .breakfast))
//}

extension Date {
    var oneMonthAfter: Date {
        Calendar.current.date(byAdding: .month, value: 1, to: Date())!
    }
}
