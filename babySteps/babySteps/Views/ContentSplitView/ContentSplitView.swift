//
//  ContentSplitView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 20/06/24.
//

import SwiftUI



struct ContentSplitView: View {
    @State private var searchText = ""
    @Binding var selectedClass: UUID?
    var body: some View {
        VStack {
            ForEach(MockData().chidls) { child in
                HStack {
                    AsyncImage(url: URL(string: "")) { image in
                        image.resizable()
                    } placeholder: {
                        Image("childPlaceHolder")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 50, height: 50)
                    }
                    Text(child.name)
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
    ContentSplitView(selectedClass: .constant(UUID()))
}
