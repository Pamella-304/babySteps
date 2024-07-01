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
class LoginProfileViewModel: NSObject {
    
    var isLoggedIn = false
    var teacher: Teacher?
    //var email = "le"
    //var senha = ""
    var showAlert = false
    var alertMessage = ""

    func startSignInWithAppleFlow() {
            let request = ASAuthorizationAppleIDProvider().createRequest()
        request.requestedScopes = [ .fullName, .email]

            let controller = ASAuthorizationController(authorizationRequests: [request])
            controller.delegate = self
            //authorizationController.presentationContextProvider = self
            controller.performRequests()
        
    }

    
    private func handleAuthorization(credential: ASAuthorizationAppleIDCredential) {
            guard let appleUser = AppleUser(credentials: credential) else {
                return
            }

            // Create the Teacher instance
            let teacher = createTeacher(from: appleUser)
            
            // Save the Teacher instance (this could be saving to a database, etc.)
            self.teacher = teacher

            // Mark user as logged in
            isLoggedIn = true
        }
    
    private func createTeacher(from appleUser: AppleUser) -> Teacher {
            return Teacher(
                id: appleUser.userID,
                userName: appleUser.userName ?? "",
                fullName: appleUser.fullName ?? "",
                roomClasses: [],
                announcements: [],
                chatMessages: [],
                activities: [],
                email: appleUser.email ?? ""
            )
        }
    
//    func  configure(_ request: ASAuthorizationAppleIDRequest) {
//        request.requestedScopes = [.fullName, .email]
//    }
//    
//    func handle(_ authResult: Result<ASAuthorization, Error>) {
//        switch authResult {
//        case .success(let auth):
//            switch auth.credential {
//            case let appleIDCredentials as ASAuthorizationAppleIDCredential:
//                
//                if let appleUser = AppleUser(credentials: appleIDCredentials),
//                   let appleUserData =  try? JSONEncoder().encode(appleUser) {
//                    
//                    UserDefaults.standard.setValue(appleUserData, forKey: "appleUser_\(appleUser.userID)")
//                    UserDefaults.standard.setValue(true, forKey: "isLoggedIn")
//                    DispatchQueue.main.async {
//                        self.isLoggedIn = true
//                        print(self.isLoggedIn)
//                    }
//                    
//                } else {
//                    // Handle case where appleUser couldn't be created
//                    showAlert = true
//                    alertMessage = "Não foi possível criar o usuário Apple"
//                }
//                
//            default:
//                break
//            }
//        case .failure(_):
//            showAlert = true
//            alertMessage = "Falha na autenticação Apple"
//        }
//    }
//    
//    
    
//    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
//        handle(.success(authorization))
//    }
//    
//    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
//        handle(.failure(error))
//    }
//    
//    func createTeacher(from appleUser: AppleUser) -> Teacher {
//        return Teacher(
//            id: appleUser.userID,
//            userName: appleUser.userName ?? "",
//            roomClasses: [],
//            announcements: [],
//            chatMessages: [],
//            activities: [],
//            email: appleUser.email ?? ""
//        )
//    }
}

extension LoginProfileViewModel: ASAuthorizationControllerDelegate {
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        if let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential {
            handleAuthorization(credential: appleIDCredential)
        }
    }

    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        print("Authorization failed: \(error.localizedDescription)")
    }
}

extension LoginProfileViewModel: ASAuthorizationControllerPresentationContextProviding {
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        return UIApplication.shared.windows.first { $0.isKeyWindow }!
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
