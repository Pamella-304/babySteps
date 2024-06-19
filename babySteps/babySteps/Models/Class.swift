//
//  Class.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 19/06/24.
//

import SwiftUI

struct Class {
    var id: UUID = UUID()
    var className: String
    var teachers: [UUID]
    var students: [UUID]
    var shift: String
    var activityDiary: [Date: Diary]
} 



class ClassList: ObservableObject {
    @Published var classList: [Class]
    
    init(classList: [Class]) {
        self.classList = [
            Class(
                className: "Math 101",
                teachers: [UUID()],
                students: [UUID()],
                shift: "Morning",
                activityDiary: [:]
            )
        ]
    }
} //Uma ClassList Não pode existit sem uma Class
