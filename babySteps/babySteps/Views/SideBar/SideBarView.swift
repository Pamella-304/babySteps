//
//  SideBar.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 20/06/24.
//

import SwiftUI

struct SideBarView: View {

    @State var viewModel = SideBarViewModel()

    var body: some View {
        VStack {

            List(selection: $viewModel.mainMenu.selectedMenu) {
                NavigationLink(value: MainMenu.mural) {
                    Label("Mural", systemImage: "rectangle.on.rectangle")
                }
                NavigationLink(value: MainMenu.atividades) {
                    Label("Atividades", systemImage: "calendar")
                }
                NavigationLink(value: MainMenu.chat) {
                    Label("Chat", systemImage: "bubble.left")
                }
                NavigationLink(value: MainMenu.perfil) {
                    Label("Profile", systemImage: "person.circle")
                }

                Section("Suas Turmas") {
                    ForEach(MockData().classrooms, id: \.id) { roomClass in
                        Button {
                            MainMenuSingleton.shared.selectedClass = roomClass.className
                            MainMenuSingleton.shared.selectedMenu = .turma(className: MainMenuSingleton.shared.selectedClass!)
                        } label: {
                            HStack {
                                Label(roomClass.className, systemImage: "rectangle.inset.filled.and.person.filled")
                                Spacer()
                                Text(roomClass.shift)
                                .foregroundStyle(Color.gray)
                            }
                        }
                    }
                    
                    Button("Criar nova turma", systemImage: "plus") {
                       print("adicionar nova turma")
                        //implementar logica iCloud aqui
                    }.foregroundColor(Color.accentColor)
                }
            }
            .listRowSeparator(.hidden)
            .listStyle(.sidebar)
            Spacer()
        }
    }
}


#Preview {
    SideBarView()
}
