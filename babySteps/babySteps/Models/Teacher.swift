//
//  SchoolUser.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 19/06/24.
//

struct Teacher: Identifiable {
    var id: String = ""
    var firstName: String
    var lastName: String
    var authID: String = ""
    var roomClasses: [RoomClass]
    var announcements: [Announcement]
    var chatMessages: [String]
    var activities: [Activity]
    var email: String
    //var studentID: String = ""
    //var studentName: String = ""
    //var userType: String = ""
    var userName: String = ""
    var students: [Student]
}
