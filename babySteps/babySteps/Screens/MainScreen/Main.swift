//
//  Main.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 19/06/24.
//

import SwiftUI

struct Main: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedMenu: MainMenu? = nil
    @State private var selectedClass: String? = nil


    var body: some View {

         // Only show the Content when in a class View or in the chat view
        if selectedMenu == .chat || selectedClass != nil {

            NavigationSplitView(columnVisibility: $visibility) {
                SideBarView(selectedMenu: $selectedMenu, selectedClass: $selectedClass)
                    .navigationTitle("Creche Mirasol")

            } content: {

                ContentSplitView(selectedClass: $selectedClass)

            } detail: {

                DetailView(selectedClass: $selectedClass, selectedMenu: $selectedMenu)
                
            }
            .onChange(of: selectedMenu) { if selectedMenu != nil { selectedClass = nil } }
            .onChange(of: selectedClass) { if selectedClass != nil { selectedMenu = nil } }
        } else {

            //Show only the sideBar and the Detail when is in the Mural, Atividades or Profile
            NavigationSplitView {
                SideBarView(selectedMenu: $selectedMenu, selectedClass: $selectedClass)
                    .navigationTitle("Creche Mirasol")
            } detail: {
                if let selectedClass = selectedClass {
                    Text("Detail view for \(selectedClass)")
                } else {
                    Text("Select a class")
                }
            }

        }
    }
}

#Preview {
    Main()
}

//struct Child: Identifiable {
//    let id = UUID()
//    var name: String
//    var image: String = "childPlaceHolder"
//}
//
//struct RoomClass: Identifiable, Hashable {
//    let id = UUID()
//    var name: String
//    var shift: String
//}

enum MainMenu: Hashable  {
    case mural, atividades, chat, perfil
    //    case turma(UUID)


    var title: String {
        switch self {

            case .mural:
                "Mural"
            case .atividades:
                "Atividades"
            case .chat:
                "Chat"
            case .perfil:
                "Perfil"
                //            case .turma:
                //                "Turma"
        }
    }

    var icon: String {
        switch self {
            case .mural:
                "rectangle.fill.on.rectangle.fill"
            case .atividades:
                "calendar.circle"
            case .chat:
                "bubble.left"
            case .perfil:
                "person.circle"
                //            case .turma:
                //                "run"
        }
    }
}


