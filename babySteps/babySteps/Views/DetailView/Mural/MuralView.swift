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


struct MuralSegmentedControlView: View {
    @Binding var segementedFilter: Announcement.Types
    var segmentedOptions = [Announcement.Types.meetings, Announcement.Types.events]
    var body: some View {
        Picker("", selection: $segementedFilter) {
            ForEach(segmentedOptions.indices, id:\.self) { option in
                Text(segmentedOptions[option].rawValue.capitalized).tag(segmentedOptions[option])
            }
        }.pickerStyle(.segmented)
            .clipShape(.rect(cornerRadius: 10))
            .frame(width: 600)
    }
}
