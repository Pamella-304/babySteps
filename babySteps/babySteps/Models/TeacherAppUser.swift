//
//  TeacherAppUser.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 04/07/24.
//

import Foundation

@Observable
class TeacherAppUser {
    
    var teacher: Teacher?
    
    static let shared = TeacherAppUser()
    private init() {}
}
