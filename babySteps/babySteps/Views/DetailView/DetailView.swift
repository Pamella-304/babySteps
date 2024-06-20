//
//  DetailView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 20/06/24.
//

import SwiftUI

struct DetailView: View {

    @Binding var selectedClass: UUID?
    @Binding var selectedMenu: MainMenu?

    var body: some View {
        VStack {
            if let selectedClass = selectedClass {
                Text("Detail view for \(selectedClass)")
            } else {
                Text("Select a class")
            }
        }
    }
}


#Preview {
    DetailView(selectedClass: .constant(UUID()), selectedMenu: .constant(.atividades))
}
