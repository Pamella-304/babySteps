//
//  Diary.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 19/06/24.
//

struct Diary {
    var id: String
    var studentId: String = ""
    var date: String
    
    var water: DiaryReport = .init(satisfaction: 0, observation: "")
    var milk: DiaryReport = .init(satisfaction: 0, observation: "")
    var fruit: DiaryReport = .init(satisfaction: 0, observation: "")
    var lunch: DiaryReport = .init(satisfaction: 0, observation: "")
    var snackTime: DiaryReport = .init(satisfaction: 0, observation: "")
    
    var attendance: Bool = true
    var attendanceObservation: String
    var completed: Bool = false
    
    struct DiaryReport {
        var satisfaction: Int = 0
        var observation: String
        
        init(satisfaction: Int, observation: String) {
            self.satisfaction = satisfaction
            self.observation = observation
        }
    }
    
    enum SatisfactionLevel {
        case all
        case half
        case few
        case didNotAccept
        case atHome
    }
    
}
