//
//  MealMenuCardView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 02/07/24.
//

import SwiftUI

struct MealMenuCardView: View {
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
    MealMenuCardView(foodTime: "Almoço")
}
