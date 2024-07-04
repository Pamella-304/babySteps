//
//  SchoolUserInfoCardView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 02/07/24.
//

import SwiftUI

struct SchoolUserInfoCardView: View {
    let schoolUser: SchoolUser
    let name: String?
    init(schoolUser: SchoolUser = MockData().schoolUser, name: String? = nil) {
        self.schoolUser = schoolUser
        self.name = schoolUser.firstName + " " + schoolUser.lastName
    }
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

            Text(name!)
                .font(.system(.title, design: .rounded))
                .bold()

            Text("\(schoolUser.email) ")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.regular)
            Spacer()
        }
    }
}


#Preview {
    SchoolUserInfoCardView()
}
