//
//  MealMenuViewModel.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 02/07/24.
//

import Foundation
import Observation

@Observable
class MealMenuViewModel {
    var foodMenu: FoodMenu

    init() {
        self.foodMenu = FoodMenu()
    }
}


