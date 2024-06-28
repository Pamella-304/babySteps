//
//  ContentSplitView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 20/06/24.
//

import SwiftUI



struct ContentSplitView: View {

    @State var viewModel: ContentSplitViewModel

    var body: some View {
        VStack {
            List(viewModel.filteredStudents, id:\.id, selection: $viewModel.selectedStudent) { student in
                HStack {
                    AsyncImage(url: URL(string: "")) { image in
                        image.resizable()
                            .clipShape(Circle())
                            .frame(width: 44, height: 44)
                    } placeholder: {
                        Image("childPlaceHolder")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 44, height: 44)
                    }
                    Text(student.name)
                    Spacer()
                    if viewModel.selectedStudent == student.id {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundStyle(.accent)
                    }
                }.listRowSeparator(.hidden)
            }
            .searchable(text: $viewModel.searchText, placement: .navigationBarDrawer)
            .keyboardType(.webSearch)
        }
        .padding()
    }



}

//#Preview {
//    ContentSplitView(viewModel: ContentSplitViewModel(selectedClass: .constant(MainMenu.turma(className: "Turma A")), selectedMenu: .constant(MainMenu.perfil)))
//}
