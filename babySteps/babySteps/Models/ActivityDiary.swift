//
//  ActivityDiary.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 19/06/24.
//

struct ActivityDiary: Identifiable {
    var id: String = ""
    var date: String
    var activityIds: [String]
    var foodMenuIds: [String]
    var classId: String
}
