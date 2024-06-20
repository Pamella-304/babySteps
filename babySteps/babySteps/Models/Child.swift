//
//  Child.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 19/06/24.
//

import SwiftUI

struct Child: Identifiable, Hashable, Codable {
    let id: UUID
    var name: String
    var studentPhoto: String
    var checkMark: Bool
    
    init(name: String, studentPhoto: String, checkMark: Bool) {
        self.id = UUID()
        self.name = name
        self.studentPhoto = studentPhoto
        self.checkMark = checkMark
    }
    
    static func getMockedList() -> [Child] {
        [Child(name: "Joe Joe", studentPhoto: "foto-criança", checkMark: false),
         Child(name: "Joana Joana", studentPhoto: "defaultPhoto", checkMark: false),
         Child(name: "Peter Peter", studentPhoto: "defaultPhoto", checkMark: false)]
    }
}
