//
//  FoodMenu.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 19/06/24.
//

struct FoodMenu: Identifiable {
    
    enum Types: String {
        case lunch = "Lunch"
        case breakfast = "Breakfast"
    }
    
    var id: String = ""
    var title: String
    var items: [String: [String]]
}
