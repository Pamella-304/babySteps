//
//  SchoolUser.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 19/06/24.
//

struct SchoolUser: Identifiable {
    var id: String = ""
    var authID: String = ""
    var roomClasses: [String]
    var announcements: [String]
    var chatMessages: [String]
    var activities: [String]
    var email: String
    var studentID: String = ""
    var studentName: String = ""
    var userType: String = ""
    var userName: String = ""
    var students: [String]
}
