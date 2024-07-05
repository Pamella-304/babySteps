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
    
    let appUser = TeacherAppUser.shared
//    @Environment(\.colorScheme) var colorScheme
    
    var teacherName: String {
        appUser.teacher?.firstName ?? "-"
    }

    var isLoggedIn = false
    var showAlert = false
    var teacher: Teacher?
    var alertMessage = ""
    
    override init() {
        self.isLoggedIn = false
        self.showAlert = false
  //     self.teacher = Teacher()
        self.alertMessage = ""
    }
    
    init(isLoggedIn: Bool = false, showAlert: Bool = false, teacher: Teacher? = nil, alertMessage: String = "") {
        self.isLoggedIn = isLoggedIn
        self.showAlert = showAlert
        self.teacher = teacher
        self.alertMessage = alertMessage
    }


    func  configure(_ request: ASAuthorizationAppleIDRequest) {
        request.requestedScopes = [.fullName, .email]
    }
    
    func handle(_ authResult: Result<ASAuthorization, Error>) {
        switch authResult {
        case .success(let auth):
            switch auth.credential {
            case let appleIDCredentials as ASAuthorizationAppleIDCredential:
                // @TODO: Por algum motivo este appleIDCredentials está vindo vazio,
                // Necessidade de inspecionar o motivo disto estar vindo sem email e name, etc.
                //
                print(appleIDCredentials)
                let userId = appleIDCredentials.user
                let email = appleIDCredentials.email ?? "E-mail não disponível"
                let firstName = appleIDCredentials.fullName?.givenName ?? "Nome não disponível"
                let lastName = appleIDCredentials.fullName?.familyName ?? "Sobrenome Não disponível"
                    
                    let teacher = Teacher(
                        id: UUID().uuidString,
                        firstName: firstName,
                        lastName: lastName,
                        authID: userId,
                        roomClasses: nil,
                        announcements: nil,
                        chatMessages: nil,
                        activities: nil,
                        email: email,
                        userName: "\(firstName) \(lastName)",
                        students: nil
                    )
                    print("variavel teacher")
                    print(teacher)
                
                appUser.teacher = teacher
                    self.isLoggedIn = true
                    print("variavel teacherAppUser")
                    // Salvar no iCloud
                    CloudKitManager.shared.saveTeacher(teacher: teacher)
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
