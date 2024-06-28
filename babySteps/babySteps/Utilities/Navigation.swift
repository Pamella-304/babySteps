//
//  Router.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 25/06/24.
//

import Foundation

class Router: ObservableObject {
    var path: [RouterData]
    
    init() {
        self.path = []
    }
    
    func goBack() {
        path.removeLast()
    }
    
    func goToRoot() {
        path = []
    }
}


enum Views {
    case Menu, DishDetails, Payment, PaymentDone, SignInForms, LoggedProfile
    // cases para o profile logado
    case PreviousOrders, Addresses, EventInfo, PaymentMethods, Configuration, TrackOrder
}

class RouterData: Hashable {
    let screen: Views

    init(screen: Views) {
        self.screen = screen

    }
    
    static func == (lhs: RouterData, rhs: RouterData) -> Bool {
        lhs.screen == rhs.screen 
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(screen)
    }
    
}
