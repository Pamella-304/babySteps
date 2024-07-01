//
//  SchoolUser.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 19/06/24.
//

struct Teacher: Identifiable {
    var id: String = ""
    //var authID: String = ""
    var userName: String = ""
    var fullName: String = ""
    var roomClasses: [Classroom]
    var announcements: [Announcement]
    var chatMessages: [String]
    var activities: [String]
    var email: String
    //var studentID: String = ""
    //var studentName: String = ""
    //var userType: String = ""
    //var students: [String]
}
