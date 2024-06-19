//
//  RoomClass.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 19/06/24.
//

struct RoomClass: Identifiable, Hashable, Codable {
    let id: String
    var shift: String
    var name: String
    var students: [String]
}
