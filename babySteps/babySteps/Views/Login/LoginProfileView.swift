//
//  LoginProfileView.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 18/06/24.
//

import SwiftUI
import AuthenticationServices
//import CloudKit
import Combine

struct LoginProfileView: View {
    
    @State private var viewModel = LoginProfileViewModel()

    
    var body: some View {
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


#Preview {
    LoginProfileView()
}