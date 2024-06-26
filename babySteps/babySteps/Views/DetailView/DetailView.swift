//
//  DetailView.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 20/06/24.
//

import SwiftUI

struct DetailView: View {


    var body: some View {
        VStack {
            switch MainMenuSingleton.shared.selectedMenu {
                case .mural:
                    MuralView()
                case .atividades:
                    EmptyView()
                case .chat:
                    EmptyView()
                case .perfil:
                    EmptyView()
                case .turma(let className):
                    StudentDiaryView()
                case .none:
                    MuralView()

            }
        }
        .ignoresSafeArea(edges: .bottom)

    }
}



#Preview {
    NavigationSplitView {
        SideBarView()
    } detail: {
        DetailView()
    }
}


