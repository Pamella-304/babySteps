//
//  PerfilView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 01/07/24.
//

import SwiftUI


struct LoggedProfileView: View {
    
    let viewModel = LoginProfileViewModel()
    
    var body: some View {
        VStack {
            VStack(spacing: 15) {

                AsyncImage(url: URL(string: "")) { image in
                    image
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 112, height: 112)
                } placeholder: {
                    Image("childPlaceHolder")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 112, height: 112)
                }
                
                Text("\(viewModel.teacher?.firstName ?? "") \(viewModel.teacher?.lastName ?? "")")
                    .font(.system(.title, design: .rounded))
                    .bold()

                Text(viewModel.teacher?.email ?? "")
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.regular)
            }

            VStack(alignment: .leading) {
                Section {
                    ClassProfileCardView()
                } header: {
                    Text("Minhas Turmas")
                        .font(.system(.title, design: .rounded))
                        .bold()
                    
                    //listar aqui as turmas do professor
                }
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
            HStack {
                VStack(alignment: .leading) {
                    Section {
                        CalendarProfileCardView()

                    } header: {
                        Text("Agenda")
                            .font(.system(.title, design: .rounded))
                            .bold()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)

                VStack(alignment: .leading) {
                    Section {
                        
                        Text("lista aqui")
//                        List {
//                            ForEach(viewModel.teacher!.announcements, id: \.self) { announcement in
//                                Text(announcement.title)
//                                .font(.system(.body, design: .rounded, weight: .regular))
//                                                        }
//                        }.frame(width: .infinity)
//                        .listRowSpacing(10)

                    } header: {
                        HStack(alignment: .bottom) {
                            Text("Lembretes")
                                .font(.system(.title, design: .rounded))
                                .bold()
                            Spacer()
                            Button {
                                print("EditPressed")
                            } label: {
                                Text("Editar")
                                    .font(.system(.body, design: .rounded, weight: .regular))
                                    .foregroundStyle(Color.orangePrimary)
                            }
                        }
                        
                    } footer: {
                        Button {
                            print("AddPressed")
                        } label: {
                            HStack {
                                Image(systemName: "plus")
                                Text("Adicionar novo lembrete")
                                    .font(.system(.body, design: .rounded, weight: .regular))
                            }.foregroundStyle(Color.orangePrimary)
                                .background(Color.clear)
                        }
                    }
                }
            }
            Button(action: {
                print("EndSession")
                //inserir lógica de deslogar
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
        .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(Color.detailViewBackground)

    }
}

struct ClassProfileCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            Text("Turma B")
                .padding(5)
                .font(.system(.title, design: .rounded))
                .bold()
                .background(Color.white)
                .clipShape(.rect(cornerRadii: RectangleCornerRadii(topLeading: 16, topTrailing: 15)))
            
            VStack(alignment: .leading) {
                Text("Número de alunos: 10")
                    .font(.system(.body, design: .rounded))
                Text("Período: Integral")
                    .font(.system(.body, design: .rounded))
            }
            .padding(10)
            .frame(maxWidth: .infinity, alignment: .bottomLeading)
            .background(Color.white)
            
        }
        .frame(width: 280, height: 150, alignment: .bottomLeading)
        
        .background {
            AsyncImage(url: URL(string: "")) { image in
                image
            } placeholder: {
                Image("classImagePlaceHolder")
                    .resizable()
                    .scaledToFill()
            }
        }
        .clipShape(.rect(cornerRadius: 16))
    }
}

struct CalendarProfileCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Segunda-Feira")
                .font(.system(.subheadline, design: .rounded))
                .foregroundStyle(Color.bluePrimary)
                .bold()
            Text("28")
                .font(.system(size: 36, weight: .medium, design: .rounded))
            HStack(alignment: .top, spacing: 5) {
                Capsule()
                    .frame(maxWidth: 4, maxHeight: .infinity)
                Text("Reunião de pais e mestres | 14h")
                    .font(.system(.body , design: .rounded, weight: .regular))
                
            }.foregroundStyle(Color.orangePrimary)
            Text("mais 1 evento")
                .font(.system(.body , design: .rounded, weight: .regular))
                .foregroundStyle(Color.gray)
        }.frame(width: 185, height: 155, alignment: .topLeading)
            .padding()
            .background(Color.white)
            .clipShape(.rect(cornerRadius: 16))
    }
}
