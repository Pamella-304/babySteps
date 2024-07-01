//
//  MockData.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 20/06/24.
//

import Foundation

struct MockData {
    let schoolUser = SchoolUser(firstName: "Marlene", lastName: "Silva",roomClasses: ["Turma A", "Turma B"], announcements: [], chatMessages: [], activities: [], email: "professora.marlene@apple.com", students: [])

    let classrooms = [
        Classroom(
            className: "Turma A",
            teachers: [UUID()],
            students: [
                Student(name: "Alice", gender: "Female", address: "123 Main St", birthDate: "2010-01-01", age: "14", mainPhone: "123-456-7890", otherPhone: "098-765-4321", ingressDate: "2020-01-01", foodRestrictions: ["None"], allergies: ["None"], bloodType: "A+", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma A", firstResponsible: "John Doe", secondaryResponsible: "Jane Doe", email: "alice@example.com", password: "password123", parentID: "parent1", schoolID: "school1"),
                Student(name: "Bob", gender: "Male", address: "124 Main St", birthDate: "2011-02-02", age: "13", mainPhone: "123-456-7891", otherPhone: "098-765-4322", ingressDate: "2020-02-02", foodRestrictions: ["Peanuts"], allergies: ["Peanuts"], bloodType: "B+", preferredHospital: "General Hospital", missingVaccines: ["Flu"], studentPhoto: "", studentClass: "Turma A", firstResponsible: "John Smith", secondaryResponsible: "Jane Smith", email: "bob@example.com", password: "password123", parentID: "parent2", schoolID: "school1"),
                Student(name: "Charlie", gender: "Male", address: "125 Main St", birthDate: "2012-03-03", age: "12", mainPhone: "123-456-7892", otherPhone: "098-765-4323", ingressDate: "2020-03-03", foodRestrictions: ["None"], allergies: ["None"], bloodType: "O+", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma A", firstResponsible: "John Brown", secondaryResponsible: "Jane Brown", email: "charlie@example.com", password: "password123", parentID: "parent3", schoolID: "school1"),
                Student(name: "David", gender: "Male", address: "126 Main St", birthDate: "2013-04-04", age: "11", mainPhone: "123-456-7893", otherPhone: "098-765-4324", ingressDate: "2020-04-04", foodRestrictions: ["Gluten"], allergies: ["Gluten"], bloodType: "AB+", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma A", firstResponsible: "John White", secondaryResponsible: "Jane White", email: "david@example.com", password: "password123", parentID: "parent4", schoolID: "school1"),
                Student(name: "Eva", gender: "Female", address: "127 Main St", birthDate: "2014-05-05", age: "10", mainPhone: "123-456-7894", otherPhone: "098-765-4325", ingressDate: "2020-05-05", foodRestrictions: ["None"], allergies: ["None"], bloodType: "A-", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma A", firstResponsible: "John Green", secondaryResponsible: "Jane Green", email: "eva@example.com", password: "password123", parentID: "parent5", schoolID: "school1"),
                Student(name: "Fiona", gender: "Female", address: "128 Main St", birthDate: "2015-06-06", age: "9", mainPhone: "123-456-7895", otherPhone: "098-765-4326", ingressDate: "2020-06-06", foodRestrictions: ["Dairy"], allergies: ["Dairy"], bloodType: "B-", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma A", firstResponsible: "John Black", secondaryResponsible: "Jane Black", email: "fiona@example.com", password: "password123", parentID: "parent6", schoolID: "school1"),
                Student(name: "George", gender: "Male", address: "129 Main St", birthDate: "2016-07-07", age: "8", mainPhone: "123-456-7896", otherPhone: "098-765-4327", ingressDate: "2020-07-07", foodRestrictions: ["None"], allergies: ["None"], bloodType: "O-", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma A", firstResponsible: "John Grey", secondaryResponsible: "Jane Grey", email: "george@example.com", password: "password123", parentID: "parent7", schoolID: "school1"),
                Student(name: "Hannah", gender: "Female", address: "130 Main St", birthDate: "2017-08-08", age: "7", mainPhone: "123-456-7897", otherPhone: "098-765-4328", ingressDate: "2020-08-08", foodRestrictions: ["None"], allergies: ["None"], bloodType: "AB-", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma A", firstResponsible: "John Gold", secondaryResponsible: "Jane Gold", email: "hannah@example.com", password: "password123", parentID: "parent8", schoolID: "school1")
            ],
            shift: "Manha",
            activityDiary: [Date(): Diary(id: "null", date: "null", attendanceObservation: "null")]
        ),
        Classroom(
            className: "Turma B",
            teachers: [UUID()],
            students: [
                Student(name: "Ian", gender: "Male", address: "131 Main St", birthDate: "2010-09-09", age: "14", mainPhone: "123-456-7898", otherPhone: "098-765-4329", ingressDate: "2020-09-09", foodRestrictions: ["None"], allergies: ["None"], bloodType: "A+", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma B", firstResponsible: "John Silver", secondaryResponsible: "Jane Silver", email: "ian@example.com", password: "password123", parentID: "parent9", schoolID: "school2"),
                Student(name: "Jack", gender: "Male", address: "132 Main St", birthDate: "2011-10-10", age: "13", mainPhone: "123-456-7899", otherPhone: "098-765-4330", ingressDate: "2020-10-10", foodRestrictions: ["None"], allergies: ["None"], bloodType: "B+", preferredHospital: "General Hospital", missingVaccines: ["Flu"], studentPhoto: "", studentClass: "Turma B", firstResponsible: "John Cooper", secondaryResponsible: "Jane Cooper", email: "jack@example.com", password: "password123", parentID: "parent10", schoolID: "school2"),
                Student(name: "Karen", gender: "Female", address: "133 Main St", birthDate: "2012-11-11", age: "12", mainPhone: "123-456-7900", otherPhone: "098-765-4331", ingressDate: "2020-11-11", foodRestrictions: ["None"], allergies: ["None"], bloodType: "O+", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma B", firstResponsible: "John Hughes", secondaryResponsible: "Jane Hughes", email: "karen@example.com", password: "password123", parentID: "parent11", schoolID: "school2"),
                Student(name: "Leo", gender: "Male", address: "134 Main St", birthDate: "2013-12-12", age: "11", mainPhone: "123-456-7901", otherPhone: "098-765-4332", ingressDate: "2020-12-12", foodRestrictions: ["Gluten"], allergies: ["Gluten"], bloodType: "AB+", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma B", firstResponsible: "John Ford", secondaryResponsible: "Jane Ford", email: "leo@example.com", password: "password123", parentID: "parent12", schoolID: "school2"),
                Student(name: "Mia", gender: "Female", address: "135 Main St", birthDate: "2014-01-13", age: "10", mainPhone: "123-456-7902", otherPhone: "098-765-4333", ingressDate: "2021-01-13", foodRestrictions: ["None"], allergies: ["None"], bloodType: "A-", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma B", firstResponsible: "John Adams", secondaryResponsible: "Jane Adams", email: "mia@example.com", password: "password123", parentID: "parent13", schoolID: "school2"),
                Student(name: "Nora", gender: "Female", address: "136 Main St", birthDate: "2015-02-14", age: "9", mainPhone: "123-456-7903", otherPhone: "098-765-4334", ingressDate: "2021-02-14", foodRestrictions: ["Dairy"], allergies: ["Dairy"], bloodType: "B-", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma B", firstResponsible: "John Brown", secondaryResponsible: "Jane Brown", email: "nora@example.com", password: "password123", parentID: "parent14", schoolID: "school2"),
                Student(name: "Oscar", gender: "Male", address: "137 Main St", birthDate: "2016-03-15", age: "8", mainPhone: "123-456-7904", otherPhone: "098-765-4335", ingressDate: "2021-03-15", foodRestrictions: ["None"], allergies: ["None"], bloodType: "O-", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma B", firstResponsible: "John White", secondaryResponsible: "Jane White", email: "oscar@example.com", password: "password123", parentID: "parent15", schoolID: "school2"),
                Student(name: "Paul", gender: "Male", address: "138 Main St", birthDate: "2017-04-16", age: "7", mainPhone: "123-456-7905", otherPhone: "098-765-4336", ingressDate: "2021-04-16", foodRestrictions: ["None"], allergies: ["None"], bloodType: "AB-", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma B", firstResponsible: "John Clark", secondaryResponsible: "Jane Clark", email: "paul@example.com", password: "password123", parentID: "parent16", schoolID: "school2")
            ],
            shift: "Tarde",
            activityDiary: [Date(): Diary(id: "null", date: "null", attendanceObservation: "null")]
        ),
        Classroom(
            className: "Turma C",
            teachers: [UUID()],
            students: [
                Student(name: "Quinn", gender: "Female", address: "139 Main St", birthDate: "2010-05-17", age: "14", mainPhone: "123-456-7906", otherPhone: "098-765-4337", ingressDate: "2021-05-17", foodRestrictions: ["None"], allergies: ["None"], bloodType: "A+", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma C", firstResponsible: "John Davis", secondaryResponsible: "Jane Davis", email: "quinn@example.com", password: "password123", parentID: "parent17", schoolID: "school3"),
                Student(name: "Rachel", gender: "Female", address: "140 Main St", birthDate: "2011-06-18", age: "13", mainPhone: "123-456-7907", otherPhone: "098-765-4338", ingressDate: "2021-06-18", foodRestrictions: ["None"], allergies: ["None"], bloodType: "B+", preferredHospital: "General Hospital", missingVaccines: ["Flu"], studentPhoto: "", studentClass: "Turma C", firstResponsible: "John Evans", secondaryResponsible: "Jane Evans", email: "rachel@example.com", password: "password123", parentID: "parent18", schoolID: "school3"),
                Student(name: "Sam", gender: "Male", address: "141 Main St", birthDate: "2012-07-19", age: "12", mainPhone: "123-456-7908", otherPhone: "098-765-4339", ingressDate: "2021-07-19", foodRestrictions: ["None"], allergies: ["None"], bloodType: "O+", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma C", firstResponsible: "John Garcia", secondaryResponsible: "Jane Garcia", email: "sam@example.com", password: "password123", parentID: "parent19", schoolID: "school3"),
                Student(name: "Tina", gender: "Female", address: "142 Main St", birthDate: "2013-08-20", age: "11", mainPhone: "123-456-7909", otherPhone: "098-765-4340", ingressDate: "2021-08-20", foodRestrictions: ["Gluten"], allergies: ["Gluten"], bloodType: "AB+", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma C", firstResponsible: "John Harris", secondaryResponsible: "Jane Harris", email: "tina@example.com", password: "password123", parentID: "parent20", schoolID: "school3"),
                Student(name: "Uma", gender: "Female", address: "143 Main St", birthDate: "2014-09-21", age: "10", mainPhone: "123-456-7910", otherPhone: "098-765-4341", ingressDate: "2021-09-21", foodRestrictions: ["None"], allergies: ["None"], bloodType: "A-", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma C", firstResponsible: "John Kelly", secondaryResponsible: "Jane Kelly", email: "uma@example.com", password: "password123", parentID: "parent21", schoolID: "school3"),
                Student(name: "Victor", gender: "Male", address: "144 Main St", birthDate: "2015-10-22", age: "9", mainPhone: "123-456-7911", otherPhone: "098-765-4342", ingressDate: "2021-10-22", foodRestrictions: ["Dairy"], allergies: ["Dairy"], bloodType: "B-", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma C", firstResponsible: "John Lee", secondaryResponsible: "Jane Lee", email: "victor@example.com", password: "password123", parentID: "parent22", schoolID: "school3"),
                Student(name: "Wendy", gender: "Female", address: "145 Main St", birthDate: "2016-11-23", age: "8", mainPhone: "123-456-7912", otherPhone: "098-765-4343", ingressDate: "2021-11-23", foodRestrictions: ["None"], allergies: ["None"], bloodType: "O-", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma C", firstResponsible: "John Miller", secondaryResponsible: "Jane Miller", email: "wendy@example.com", password: "password123", parentID: "parent23", schoolID: "school3"),
                Student(name: "Xander", gender: "Male", address: "146 Main St", birthDate: "2017-12-24", age: "7", mainPhone: "123-456-7913", otherPhone: "098-765-4344", ingressDate: "2021-12-24", foodRestrictions: ["None"], allergies: ["None"], bloodType: "AB-", preferredHospital: "General Hospital", missingVaccines: ["None"], studentPhoto: "", studentClass: "Turma C", firstResponsible: "John Nelson", secondaryResponsible: "Jane Nelson", email: "xander@example.com", password: "password123", parentID: "parent24", schoolID: "school3")
            ],
            shift: "Noite",
            activityDiary: [Date(): Diary(id: "null", date: "null", attendanceObservation: "null")]
        )
    ]

    let anoucements = {
        // Sample data for various types
        let types: [Announcement.Types] = [Announcement.Types.events, Announcement.Types.meetings]

        var announcements: [Announcement] = []

        // Function to generate random lorem ipsum text

        // Loop to create 20 announcements
        for i in 0..<20 {
          let randomType = types.randomElement()!

          announcements.append(Announcement(
            id: UUID().uuidString, // Generate unique ID
            title: "Announcement \(i + 1)",
            description: "Cillum minim pariatur id. Exercitation sed culpa sint. Ex dolore consectetur. (3 sentences)\nConsequat proident tempor officia. Laborum consectetur dolor. Dolore minim est aliqua cillum eu non. Cillum velit Excepteur ad anim. Ea tempor cillum. (5 sentences)\nEiusmod consectetur culpa in ad ut ut elit sed. Exercitation qui mollit ex anim Duis nulla in officia. Ullamco culpa cupidatat consequat dolor ut mollit voluptate dolore minim. ", // Generate 4-sentence lorem ipsum
            photo: "https://picsum.photos/id/\(i + 1)/200/150", // Placeholder image
            dateEvent: "2024-07-\(String(format: "%02d", i % 31 + 1))", // Simulate dates within July
            writerName: "John Doe",
            type: randomType
          ))
        }
        return announcements
    }()



}
