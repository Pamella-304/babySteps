//
//  babyStepsApp.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 18/06/24.
//

import SwiftUI

@main
struct babyStepsApp: App {
    @Environment(\.colorScheme) var colorScheme

    @State var teacherAppUser = TeacherAppUser.shared
    
    var body: some Scene {
        WindowGroup {
            //Main()
            LoginProfileView()
                


        
        }
    }
}
