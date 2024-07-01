//
//  AppleUser.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 24/06/24.
//

import AuthenticationServices

struct AppleUser: Codable {
    let userID: String
    let userName: String?
    let fullName: String?
    let email: String?

    init?(credentials: ASAuthorizationAppleIDCredential) {
        
        guard let userID = credentials.user as String? else { return nil }
            self.userID = userID
            self.userName = credentials.fullName?.givenName
            self.fullName = credentials.fullName?.givenName
            self.email = credentials.email
        
    }
}

