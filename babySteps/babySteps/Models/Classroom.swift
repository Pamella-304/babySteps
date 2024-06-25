//
//  Class.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 19/06/24.
//

import SwiftUI

struct Classroom {
    var id: UUID = UUID()
    var className: String
    var teachers: [UUID]
    var students: [Student]
    var shift: String
    var activityDiary: [Date: Diary]
} 


class ClassList: ObservableObject {
    @Published var classList: [Classroom]
    
    init(classList: [Classroom]) {
        self.classList = [
            Classroom(
                className: "Math 101",
                teachers: [UUID()],
                students: [MockData().classes[0].students[0]],
                shift: "Morning",
                activityDiary: [:]
            )
        ]
    }
} //Uma ClassList Não pode existit sem uma Class
