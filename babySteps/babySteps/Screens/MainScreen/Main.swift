//
//  Main.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 19/06/24.
//

import SwiftUI

struct Main: View {
    @State var viewModel = MainViewModel()

    var body: some View {

         // Only show the Content when in a class View or in the chat view
        if MainMenuSingleton.shared.selectedMenu == .chat || MainMenuSingleton.shared.selectedMenu == .turma(className: MainMenuSingleton.shared.selectedClass ?? "") {
            NavigationSplitView(columnVisibility: $viewModel.visibility) {

                SideBarView(viewModel: SideBarViewModel())
                    .navigationTitle("Creche Mirasol")
                    .toolbar {
                        Button("", systemImage: "plus") {
                            print("plus")
                        }
                    }
            } content: {
                ContentSplitView(viewModel: ContentSplitViewModel())
                    .navigationTitle("\(String(describing: MainMenuSingleton.shared.selectedMenu!.title.capitalized))")

            } detail: {

                DetailView()

            }
        } else {

            //Show only the sideBar and the Detail when is in the Mural, Atividades or Profile

            NavigationSplitView {
                    SideBarView()
                        .navigationTitle("Creche Mirasol")
                        .toolbar {
                            Button("", systemImage: "plus") {
                                print("plus")

                            }
                        }
            } detail: {
                DetailView()
            }

        }
    }
}

#Preview {
    Main()
}


enum MainMenu: Hashable  {
    case mural, atividades, chat, perfil
    indirect case turma(className: String)


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
            case .turma(let className):
                "\(className)"
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
            case .turma:
                "rectangle.inset.filled.and.person.filled"
        }
    }
}
