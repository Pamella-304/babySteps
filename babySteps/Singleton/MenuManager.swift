//
//  MenuManager.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 24/06/24.
//

import Foundation
import Observation

@Observable
class MainMenuSingleton {

    static var shared: MainMenuSingleton = {
        let instance = MainMenuSingleton()
        return instance
    }()

    private init() {}

    var selectedMenu: MainMenu? = nil
    var selectedClass: String? = nil
}
