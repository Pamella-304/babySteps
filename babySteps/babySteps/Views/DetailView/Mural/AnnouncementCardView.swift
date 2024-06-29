//
//  AnouncementCardView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 26/06/24.
//

import SwiftUI

struct AnnouncementCardView: View {
    let announcement: Announcement
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Spacer()
            switch announcement.type {
                case "reuniões":
                    MeetingCardView(announcement: announcement)
                case "eventos":
                    EventCardView(announcement: announcement)
                default:
                    EmptyView()
            }
            Spacer()
        }
        .frame(height: 207)
        .padding()
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 16))
    }
}

#Preview {
    VStack(spacing: 15) {
        Spacer()
        MuralSegmentedControlView(segementedFilter: .constant(.events))
        ScrollView {
            AnnouncementCardView(announcement: MockData().anoucements[2])
        }.padding()
    }.background(Color.detailViewBackground)
        .frame(maxWidth: .infinity)
        .navigationTitle("Mural")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbar(content: {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    print("PlusToolBarClicked")
                } label: {
                    Image(systemName: "plus")
                        .foregroundStyle(.accent)
                }
            }
        })
}

struct EventCardView: View {
    let announcement: Announcement
    @State var isNavigating = false
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 15) {
                AsyncImage(url: URL(string: announcement.photo)) { image in
                    image
                        .resizable()
                        .frame(width: 200, height: 150)
                        .clipShape(.rect(cornerRadius: 16))
                } placeholder: {
                    Image("anoucementsImagePlaceHolder")
                        .resizable()
                        .frame(width: 200, height: 150)
                        .clipShape(.rect(cornerRadius: 16))
                }

                VStack(alignment: .leading) {
                    Text(announcement.title)
                        .font(.title2)
                        .bold()

                    VStack(alignment: .leading) {
                        Text(announcement.description)
                        + Text("Read more...")
                            .foregroundStyle(Color.accentColor)
//                            .onTapGesture {
//                                isNavigating = true
//                            }
                    }
                }
            }
        }
    }
}

struct MeetingCardView: View {
    let announcement: Announcement
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            HStack {
                AsyncImage(url: URL(string: announcement.photo)) { image in
                    //                            image
                    Image("childPlaceHolder2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .frame(width: 77, height: 77)
                } placeholder: {
                    Image("childPlaceHolder")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .frame(width: 77, height: 77)
                }
                VStack {
                    Text(announcement.writerName)
                        .font(.title2)
                        .fontWeight(.medium)

                    Text(announcement.dateEvent)
                        .foregroundStyle(Color.gray)
                }.padding(.leading, 10)
                Spacer()
            }
            VStack(alignment: .leading) {
                Text(announcement.description)
                Spacer()
                NavigationLink("Read More..", destination: EmptyView())
            }
        }
    }
}
