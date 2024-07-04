//
//  MuralView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 26/06/24.
//

import SwiftUI

struct MuralView: View {
    @State var filterSegmented: Announcement.Types = .meetings
    var body: some View {
        VStack(spacing: 15) {
            Spacer()
            MuralSegmentedControlView(segementedFilter: $filterSegmented)
            ScrollView {
                ForEach(MockData().anoucements, id:\.id) { announcement in
                    if announcement.type == filterSegmented.rawValue {
                        AnnouncementCardView(announcement: announcement)
                            .padding(.bottom, 15)
                    }
                }
            }.padding()
        }.background(Color.detailViewBackground)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle("Mural")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("PlusToolBarClicked")
                        //Implementar aqui a logica de abrir o popUp
                        //implementar a logica de armazenaento mo iCloud
                        
                    } label: {
                        Image(systemName: "plus")
                            .foregroundStyle(.accent)
                    }
                }
            })
    }
}

#Preview {
    MuralView()
}



