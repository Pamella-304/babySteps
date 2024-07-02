//
//  MuralSegmentedControlView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 02/07/24.
//

import SwiftUI

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

#Preview {
    MuralSegmentedControlView(segementedFilter: .constant(Announcement.Types.meetings))
}
