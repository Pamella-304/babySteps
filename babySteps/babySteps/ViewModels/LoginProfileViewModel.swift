//
//  File.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 18/06/24.
//

import SwiftUI
import AuthenticationServices
import Combine

@Observable
class LoginProfileViewModel: NSObject, ASAuthorizationControllerDelegate {
    
    
    var isLoggedIn = false
    var email = "le"
    var senha = ""
    var showAlert = false
    var alertMessage = ""


    func  configure(_ request: ASAuthorizationAppleIDRequest) {
        request.requestedScopes = [.fullName, .email]
    }
    
    func handle(_ authResult: Result<ASAuthorization, Error>) {
        switch authResult {
        case .success(let auth):
            switch auth.credential {
            case let appleIDCredentials as ASAuthorizationAppleIDCredential:
                
                if let appleUser = AppleUser(credentials: appleIDCredentials),
                   let appleUserData =  try? JSONEncoder().encode(appleUser) {
                    
                    UserDefaults.standard.setValue(appleUserData, forKey: "appleUser_\(appleUser.userID)")
                    UserDefaults.standard.setValue(true, forKey: "isLoggedIn")
                    DispatchQueue.main.async {
                        self.isLoggedIn = true
                        print(self.isLoggedIn)
                    }
                    
                } else {
                    // Handle case where appleUser couldn't be created
                    showAlert = true
                    alertMessage = "Não foi possível criar o usuário Apple"
                }
                
            default:
                break
            }
        case .failure(_):
            showAlert = true
            alertMessage = "Falha na autenticação Apple"
        }
    }
    
    func startSignInWithAppleFlow() {
            let request = ASAuthorizationAppleIDProvider().createRequest()
            configure(request)

            let controller = ASAuthorizationController(authorizationRequests: [request])
            controller.delegate = self
            controller.performRequests()
        

    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        handle(.success(authorization))
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        handle(.failure(error))
    }
    
}



struct LocalizedSignInWithAppleButton: UIViewRepresentable {
    var type: ASAuthorizationAppleIDButton.ButtonType
    var style: ASAuthorizationAppleIDButton.Style
    var locale: Locale
    
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        let button = ASAuthorizationAppleIDButton(type: type, style: style)
        
        button.overrideUserInterfaceStyle = .dark
        return button
    }
    
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {

    }
    
    
}
