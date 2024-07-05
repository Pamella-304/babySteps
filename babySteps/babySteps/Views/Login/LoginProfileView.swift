//
//  LoginProfileView.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 18/06/24.
//

import SwiftUI
import AuthenticationServices
import Combine


struct LoginProfileView: View {
    
    @State private var stackPath = Router()
    @State private var viewModel = LoginProfileViewModel()
    
    var body: some View {

        VStack{
            if viewModel.isLoggedIn {
                
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
                        
                        Text(viewModel.teacherName)
                            .font(.system(.title2, design: .rounded))
                          
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
                
                } else {
                Text("Tela de Login")
                
                LocalizedSignInWithAppleButton(
                    type: .signIn,
                    style: .black,
                    locale: Locale(identifier: "pt_BR") // Força o botão para o português do Brasil
                )
                .cornerRadius(10)
                .frame(width: 250,height: 41)
                .onTapGesture{
                    viewModel.startSignInWithAppleFlow()
                }
            }
        }
     
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

#Preview {
    LoginProfileView()
}
