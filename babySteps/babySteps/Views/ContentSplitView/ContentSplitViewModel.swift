//
//  ContentSplitViewModel.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 24/06/24.
//

import Foundation
import Observation

@Observable class ContentSplitViewModel {
    var searchText = ""
    var selectedStudent: String? = nil

    var filteredStudents: [Student] {
        var students: [Student] = []

        if MainMenuSingleton.shared.selectedMenu == .chat {
            students = MockData().classrooms.flatMap { $0.students }
        } else {
            guard let classroom = MockData().classrooms.first(where: { $0.className == MainMenuSingleton.shared.selectedClass } ) else { return [] }
            students = classroom.students
        }
        if searchText.isEmpty {
            return students
        } else {
            return students.filter { $0.name.contains(searchText) }
        }
    }

}

