//
//  AppleUser.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 24/06/24.
//

import AuthenticationServices

struct AppleUser: Codable {
    let userID: String
    let firstName: String?
    let lastName: String?
    let userName: String?
    let email: String?

    init?(credentials: ASAuthorizationAppleIDCredential) {
        
        guard let userID = credentials.user as String? else { return nil }
            self.userID = userID
            self.userName = credentials.fullName?.givenName
            self.firstName = credentials.fullName?.givenName
            self.lastName = credentials.fullName?.familyName

            self.email = credentials.email
        
    }
}

