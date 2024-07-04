//
//  FoodMenu.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 19/06/24.
//
import Foundation

struct FoodMenu: Identifiable {

    var id: String = UUID().uuidString
    var menuDate: Date
    var mealType: MealTypes
    var foodType: [FoodTypes: String]

    init() {
        self.mealType = .breakfast
        self.menuDate = Date()
        self.foodType = [.portion: "",
                          .fruit: "",
                          .juice: "",
                          .mainMeal: "",
                          .salad: "",
        ]
    }


    enum MealTypes: CaseIterable {
        case event, breakfast, lunch, dinner

        var mealName: String {
            switch self {
                case .event:
                    "Evento"
                case .breakfast:
                    "Café da Manhã"
                case .lunch:
                    "Almoço"
                case .dinner:
                    "Jantar"
            }
        }
    }
    enum FoodTypes: CaseIterable {
        case portion, fruit, juice, mainMeal, salad

        var foodTypeName: String {
            switch self {
                case .portion:
                    "Porção"
                case .fruit:
                    "Fruta"
                case .juice:
                    "Suco"
                case .mainMeal:
                    "Prato Principal"
                case .salad:
                    "Salada"
            }
        }
    }
}
