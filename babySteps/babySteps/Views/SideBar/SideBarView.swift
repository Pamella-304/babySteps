//
//  SideBar.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 20/06/24.
//

import SwiftUI

struct SideBarView: View {

    @Binding var selectedMenu: MainMenu?
    @Binding var selectedClass: UUID?

    var body: some View {
        VStack{
            List(selection: $selectedMenu) {
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

                Section("Your Classes") {
                    ForEach(MockData().classes, id: \.id) { roomClass in
                        Button {
                            selectedClass = roomClass.id
                        } label: {
                            HStack {
                                Label(roomClass.name, systemImage: "rectangle.inset.filled.and.person.filled")
                                Spacer()
                                Text(roomClass.shift)
                                .foregroundStyle(Color.gray)
                            }
                        }
                    }
                }
            }
            .listStyle(.sidebar)

        }
    }
}


#Preview {
    SideBar(sele)
}
