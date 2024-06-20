//
//  MockData.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 20/06/24.
//

import Foundation

struct MockData {
    var sideBar = [
        MainMenu.mural,
        MainMenu.atividades,
        MainMenu.chat,
        MainMenu.perfil
    ]

    var classes = [RoomClass(name: "Turma A", shift: "Manhã"),
                   RoomClass(name: "Turma B", shift: "Tarde"),
                   RoomClass(name: "Turma C", shift: "Noite")]



    var chidls = [Child(name: "Joao"),Child(name: "Maria"),Child(name: "Jose"), Child(name: "Felipe")]
}
