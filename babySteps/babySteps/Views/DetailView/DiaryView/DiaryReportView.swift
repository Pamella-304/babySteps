//
//  DiaryView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 25/06/24.
//

import SwiftUI

struct DiaryReportView: View {
    let presence = PresenceType.allCases
    let agua = AguaType.allCases
    let leite = LeiteType.allCases

    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Button {

                } label: {
                    Image(systemName: "chevron.left")
                }
                Text("10 de Agosto")
                    .foregroundStyle(Color.accentColor)
                    .font(.title3)
                Button {

                } label: {
                    Image(systemName: "chevron.right")
                }
                Spacer()
            }

            HStack(spacing: 20) {
                DiaryCard(diaryType: DiaryType.presenca, items: presence)
                DiaryCard(diaryType: DiaryType.agua, items: agua)
            }
            DiaryCard(diaryType: DiaryType.leite, items: leite)
        }
    }
}

struct DiaryCard: View {
    let diaryType: DiaryType
    let items: [any DiaryReportType]
    @State var observations: String = ""

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Label(diaryType.title, systemImage: diaryType.icon)
                        .font(.title)
                    Spacer()
                }

                DiaryCardGrid(items: items)
                TextField("Observações...", text: $observations)
                    .font(.title2)
                    .padding(10)
                    .background(Color.detailViewBackground)
                    .clipShape(.rect(cornerRadius: 10))
                    .keyboardType(.default)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .clipShape(.rect(cornerRadius: 20))
        }
    }
}

struct StudentInfoView: View {
    var student: Student = MockData().classrooms[0].students[0]
    var body: some View {
        VStack(spacing: 15) {

            AsyncImage(url: URL(string: "")) { image in
                image
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 112, height: 112)
            } placeholder: {
                Image("childPlaceHolder")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 112, height: 112)
            }

            Text(student.name)
                .font(.title)
                .bold()

            Text("\(student.age) Anos")
                .font(.title2)

            VStack {
                Text("Henrique da Silva")
                    .font(.system(.title3, weight: .semibold))
                    .italic()
                    .foregroundStyle(Color.gray)
                Text("Marina Gabriel")
                    .font(.system(.title3, weight: .semibold))
                    .italic()
                    .foregroundStyle(Color.gray)
            }
        }
    }
}

struct DiaryCardGrid: View {
    let items: [any DiaryReportType]
    var gridColumns: [GridItem]
    @State var selectedItem: (any DiaryReportType)?

    init(items: [any DiaryReportType]) {
        self.items = items
        self.gridColumns = Array(repeating: GridItem(), count: items.count)
    }

    var body: some View {
        HStack {
            GridRow(alignment: .center) {
                ForEach(items, id:\.id) { item in
                    Button {
                        selectedItem = item
                    } label: {
                    VStack(spacing: 15) {
                        Image(systemName: item.icon)
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(selectedItem?.title == item.title ? Color.black : Color.gray)
                            .background(alignment: .center) {
                                Circle()
                                    .foregroundStyle(selectedItem?.title == item.title ? Color.accentColor : Color.detailViewBackground)
                                    .scaleEffect(1.7)
                            }
                        Text(item.title.capitalized)
                            .font(.body)
                            .foregroundStyle(Color.black)
                    }
                    }.frame(maxWidth: .infinity)
                }
            }
        }

    }
}





#Preview {
    DiaryReportView()
}
