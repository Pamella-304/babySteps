//
//  LoginProfileView.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 18/06/24.
//

import SwiftUI
import AuthenticationServices
import CloudKit


struct LoginProfileView: View {
   let testManager = TestManager()
    
    var body: some View {
        Text("Tela de Login")
            .onAppear{
                print("entrou no on appear")
                testManager.testSaveStudent()
                print("passou por aqui")
            }

    }
    
}


#Preview {
    LoginProfileView()
}
