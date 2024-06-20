//
//  ContentSplitView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 20/06/24.
//

import SwiftUI



struct ContentSplitView: View {
    @State private var searchText = ""
    @Binding var selectedClass: String?
    var body: some View {
        VStack {
            ForEach(MockData().classes[0].students, id:\.id) { student in
                HStack {
                    AsyncImage(url: URL(string: "")) { image in
                        image.resizable()
                    } placeholder: {
                        Image("childPlaceHolder")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 50, height: 50)
                    }
                    Text(student.name)
                    Spacer()
                }
            }
            Spacer()
                .searchable(text: $searchText, placement: .navigationBarDrawer)
        }

        .padding()
        .navigationTitle("\(String(describing: selectedClass))")
    }
}

#Preview {
    ContentSplitView(selectedClass: .constant("Akanskddoskds"))
}
