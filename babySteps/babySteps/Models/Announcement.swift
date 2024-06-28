//
//  Announcement.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 19/06/24.
//

struct Announcement: Identifiable, Hashable {
    var id: String
    var title: String
    var description: String
    var photo: String
    var dateEvent: String
    var writerName: String
    var type: String  // Store the raw value of the enum as a String
    
    enum Types: String {
        case meetings = "reuniões"
        case events = "eventos"
    }
    
    init(id: String, title: String, description: String, photo: String, dateEvent: String, writerName: String, type: Types) {
        self.id = id
        self.title = title
        self.description = description
        self.photo = photo
        self.dateEvent = dateEvent
        self.writerName = writerName
        self.type = type.rawValue  // Store the raw value of the enum as a String
    }

}
