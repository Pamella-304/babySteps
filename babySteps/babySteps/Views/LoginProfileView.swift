//
//  LoginProfileView.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 18/06/24.
//

import SwiftUI
import Combine
import AuthenticationServices


struct LoginProfileView: View {
    
    @State private var viewModel =  LoginProfileViewModel()

    
    var body: some View {
        Text("Tela de Login")
        
       
    }
    
    struct LocalizedSignInWithAppleButton: UIViewRepresentable {
        var type: ASAuthorizationAppleIDButton.ButtonType
        var style: ASAuthorizationAppleIDButton.Style
        var locale: Locale
        
        func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
            let button = ASAuthorizationAppleIDButton(type: type, style: style)
            
            // Set the locale for the button (this will apply the correct language)
            button.overrideUserInterfaceStyle = .dark // Example: ensure the button is in dark mode if needed
            return button
        }
        
        func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {
            // No need to update the view
        }
    }
    
}


#Preview {
    LoginProfileView()
}
