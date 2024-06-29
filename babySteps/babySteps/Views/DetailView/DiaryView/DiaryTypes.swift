//
//  File.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 25/06/24.
//

import Foundation

import Foundation

protocol DiaryReportType: Hashable, Identifiable {
    var icon: String { get }
    var title: String { get }
    var id: UUID { get }  // Add this line
}

enum DiaryType {

    case presenca, agua, leite, fruta, almoco, lanche

    var title: String {
        switch self {
        case .presenca:
            return "Presença"
        case .agua:
            return "Água"
        case .leite:
            return "Leite"
        case .fruta:
            return "Fruta"
        case .almoco:
            return "Almoço"
        case .lanche:
            return "Lanche da tarde"
        }
    }

    var icon: String {
        switch self {
        case .presenca:
            return "face.smiling"
        case .agua:
            return "drop"
        case .leite:
            return "cup.and.saucer"
        case .fruta:
            return "carrot"
        case .almoco:
            return "fork.knife"
        case .lanche:
            return "takeoutbag.and.cup.and.straw"
        }
    }
}

enum PresenceType: String, CaseIterable, DiaryReportType {
    case presente, ausente

    var title: String {
        switch self {
        case .presente:
            return "presente"
        case .ausente:
            return "ausente"
        }
    }

    var icon: String {
        switch self {
        case .presente:
            return "face.smiling"
        case .ausente:
            return "face.dashed"
        }
    }

    var id: UUID { UUID() }  // Unique identifier for each case
}

enum AguaType: String, CaseIterable, DiaryReportType {
    case sim, nao

    var title: String {
        switch self {
        case .sim:
            return "sim"
        case .nao:
            return "não"
        }
    }

    var icon: String {
        switch self {
        case .sim:
            return "hand.thumbsup"
        case .nao:
            return "hand.thumbsdown"
        }
    }

    var id: UUID { UUID() }  // Unique identifier for each case
}

enum LeiteType: String, CaseIterable, DiaryReportType {
    case tudo, metade, pouco, naoAceitou, emCasa

    var title: String {
        switch self {
        case .tudo:
            return "Tudo"
        case .metade:
            return "Metade"
        case .pouco:
            return "Pouco"
        case .naoAceitou:
            return "Não aceitou"
        case .emCasa:
            return "em casa"
        }
    }

    var icon: String {
        switch self {
        case .tudo:
            return "cup.and.saucer.fill"
        case .metade:
            return "drop.halffull"
        case .pouco:
            return "cup.and.saucer"
        case .naoAceitou:
            return "x.circle"
        case .emCasa:
            return "house"
        }
    }

    var id: UUID { UUID() }  // Unique identifier for each case
}
