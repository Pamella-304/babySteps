//
//  CardapioView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 27/06/24.
//

import SwiftUI


struct CardapioView: View {
    var body: some View {
        ScrollView {
        VStack(spacing: 30) {
                DayFoodMenu(date: Date())
                DayFoodMenu(date: Date())
                DayFoodMenu(date: Date())
                DayFoodMenu(date: Date())
                DayFoodMenu(date: Date())
                DayFoodMenu(date: Date())
                DayFoodMenu(date: Date())
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



struct DayFoodMenu: View {
    let date: Date
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {

            Text("\(weekDayFormat(date: date))")
                .font(.title2)
                .fontWeight(.semibold)
            Text("\(getFormattedDate(date: date))")
                .font(.title3)
                .foregroundStyle(.gray)

            HStack(spacing: 30) {
                FoodMenuCard(foodTime: "Almoço")
                FoodMenuCard(foodTime: "Lanche da Tarde")
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

struct FoodMenuCard: View {
    let foodTime: String
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text(foodTime)
                .font(.title2)
                .fontWeight(.semibold)
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
                .font(.body)
                .foregroundStyle(Color.gray)
            Text(food)
                .font(.body)
        }
    }
}

#Preview {
    CardapioView()
}
