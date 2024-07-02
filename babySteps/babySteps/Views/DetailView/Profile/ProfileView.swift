//
//  PerfilView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 01/07/24.
//

import SwiftUI

struct ProfileView: View {
    @State var listItens = ["Lululu","Lalala","Lilili", "Lololo"]
    var body: some View {
        VStack {
            SchoolUserInfoCardView(schoolUser: MockData().schoolUser)

            Spacer()

            VStack(alignment: .leading) {
                Section {
                    ScrollView(.horizontal) {
                        LazyHStack(spacing: 15) {
                            ForEach(MockData().classrooms, id:\.id) { classroom in
                                ClassroomProfileCardView(classRoom: classroom)
                            }
                        }.frame(minHeight: 150)
                    }
                } header: {
                    Text("Minhas Turmas")
                        .font(.system(.title, design: .rounded))
                        .bold()
                }
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)

            HStack(alignment: .top, spacing: 80) {
                VStack(alignment: .leading) {
                    Section {
                        CalendarProfileCardView()
                            .padding(.top, -10)
                            .padding(.leading, -5)
                    } header: {
                        Text("Agenda")
                            .font(.system(.title, design: .rounded))
                            .bold()
                    }
                }
                .frame(alignment: .topLeading)

                VStack {
                    Section {
                        List {
                            ForEach(listItens, id:\.self) { item in
                                Text(item)
                                    .font(.system(.body, design: .rounded, weight: .regular))
                                    .padding(.vertical, 5)
                            }
                            .onDelete{ indexSet in
                                listItens.remove(atOffsets: indexSet)
                            }

                        }
                       .scrollContentBackground(.hidden)
                        .listRowSpacing(10)
                        .padding(.top, -40)
                        .padding(.leading, -15)
                        .padding(.trailing, -15)

                    } header: {
                        HStack(alignment: .bottom) {
                            Text("Lembretes")
                                .font(.system(.title, design: .rounded))
                                .bold()
                            Spacer()
                            Button {
                                print("EditPressed")
                            } label: {
                                EditButton()
                                    .font(.system(.body, design: .rounded, weight: .regular))
                                    .foregroundStyle(Color.orangePrimary)
                            }
                        }.zIndex(3)
                        .background(Color.detailViewBackground)
                    } footer: {
                        Button {
                            print("AddPressed")
                        } label: {
                            HStack {
                                Image(systemName: "plus")
                                Text("Adicionar novo lembrete")
                                    .font(.system(.body, design: .rounded, weight: .regular))
                                Spacer()
                            }.foregroundStyle(Color.orangePrimary)

                        }
                    }
                }.frame(maxWidth: .infinity, minHeight: 44, alignment: .topLeading)
            }.padding(.trailing, 20)
            Button(action: {
                print("EndSession")
            }, label: {
                Text("Finalizar Sessão")
                    .padding(8)
                    .font(.system(size: 19, weight: .regular, design: .rounded))
                    .foregroundStyle(Color.orangePrimary)
                    .frame(width: 500)
                    .background(Color.white)
                    .clipShape(.rect(cornerRadius: 12))
            })

        }
        .padding(.top, 20)
        .padding()
        .background(Color.detailViewBackground)
            .frame(maxWidth: .infinity)
            .navigationTitle("Perfil")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("PlusToolBarClicked")
                    } label: {
                        Image(systemName: "plus")
                            .foregroundStyle(.accent)
                    }
                }
            })

    }
}

#Preview {
    NavigationSplitView {
SideBarView()
    } detail: {
        ProfileView()
    }
}




