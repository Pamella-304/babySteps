//
//  ClassroomProfileCardView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 02/07/24.
//

import SwiftUI

struct ClassroomProfileCardView: View {
    var classRoom: Classroom
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {

            Text(classRoom.className)
                .padding(5)
                .font(.system(.title, design: .rounded))
                .bold()
                .background(Color.white)
                .clipShape(.rect(cornerRadii: RectangleCornerRadii(topLeading: 16, topTrailing: 15)))

            VStack(alignment: .leading) {
                Text("Número de alunos: \(classRoom.students.count)")
                    .font(.system(.body, design: .rounded))
                Text("Período: \(classRoom.shift)")
                    .font(.system(.body, design: .rounded))
            }
            .padding(10)
            .frame(maxWidth: .infinity, alignment: .bottomLeading)
            .background(Color.white)

        }
        .frame(width: 280, height: 150, alignment: .bottomLeading)

        .background {
            AsyncImage(url: URL(string: "")) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Image("classImagePlaceHolder")
                    .resizable()
                    .scaledToFill()
            }
        }
        .clipShape(.rect(cornerRadius: 16))
    }
}


#Preview {
    ClassroomProfileCardView(classRoom: MockData().classrooms[0])
}
