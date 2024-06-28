//
//  StudentDiaryView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 26/06/24.
//

import SwiftUI

struct StudentDiaryView: View {
    var body: some View {
        VStack {
            StudentInfoView()

            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Diário")
                            .font(.title)
                            .bold()
                        Spacer()
                        Button {
                        } label: {
                            Image(systemName: "chevron.down")
                        }
                    }

                    DiaryReportView()

                    VStack {
                        HStack {
                            Text("Ficha do Aluno")
                                .font(.title2)
                                .bold()
                            Spacer()
                            Button {
                            } label: {
                                Image(systemName: "chevron.down")
                            }
                        }
                    }
                }
                .padding()

            }

        }.background(Color.detailViewBackground)
    }
}


#Preview {
    StudentDiaryView()
}
