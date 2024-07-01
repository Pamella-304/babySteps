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
                DayMealMenu(date: Date())
                DayMealMenu(date: Date())
                DayMealMenu(date: Date())
                DayMealMenu(date: Date())
                DayMealMenu(date: Date())
                DayMealMenu(date: Date())
                DayMealMenu(date: Date())
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



struct DayMealMenu: View {
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
                MealMenuCard(foodTime: "Almoço")
                MealMenuCard(foodTime: "Lanche da Tarde")
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

struct MealMenuCard: View {
    let foodTime: String
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text(foodTime)
                .font(.system(.title2, design: .rounded, weight: .semibold))
            HStack(spacing: 50) {
                VStack(alignment: .leading, spacing: 12) {
                    TypeAndFoodLabelView(type: "Porção", food: "Arroz e feijão")
                    TypeAndFoodLabelView(type: "Fruta", food: "Laranja")
                    TypeAndFoodLabelView(type: "Suco", food: "Suco de Morango")
                }
                VStack(alignment: .leading, spacing: 12) {
                    TypeAndFoodLabelView(type: "Prato Principal", food: "Salsicha ao sugo\nPurê de Batata")
                    TypeAndFoodLabelView(type: "Salada", food: "Salada de repolho\nbicolor")
                }

            }
        }.padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .background(Color.white)
            .clipShape(.rect(cornerRadius: 16))
    }
}

struct TypeAndFoodLabelView: View {
    let type: String
    let food: String
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(type.uppercased())
                .font(.system(.body, design: .rounded))
                .foregroundStyle(Color.gray)
            Text(food)
                .font(.system(.body, design: .rounded))
        }
    }
}

#Preview {
    MealMenuView()
}
