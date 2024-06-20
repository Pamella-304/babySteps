//
//  MockData.swift
//  babySteps
//
//  Created by Marcelo Pastana Duarte on 20/06/24.
//

import Foundation

struct MockData {
    var sideBar = [
        MainMenu.mural,
        MainMenu.atividades,
        MainMenu.chat,
        MainMenu.perfil
    ]

    var classes = [
        Classroom(className: "Turma A", teachers: [UUID()], students: [
            Student(name: "", gender: "", address: "", birthDate: "", age: "", mainPhone: "", otherPhone: "", ingressDate: "", foodRestrictions: [""], allergies: [""], bloodType: "", preferredHospital: "", missingVaccines: [""], studentPhoto: "", studentClass: "", firstResponsible: "", secondaryResponsible: "", email: "", password: "", parentID: "", schoolID: "")
        ], shift: "Manha", activityDiary: [Date(): Diary(id: "null", date: "null", attendanceObservation: "null")]),
        Classroom(className: "Turma B", teachers: [UUID()], students: [
            Student(name: "", gender: "", address: "", birthDate: "", age: "", mainPhone: "", otherPhone: "", ingressDate: "", foodRestrictions: [""], allergies: [""], bloodType: "", preferredHospital: "", missingVaccines: [""], studentPhoto: "", studentClass: "", firstResponsible: "", secondaryResponsible: "", email: "", password: "", parentID: "", schoolID: "")
        ], shift: "Tarde", activityDiary: [Date(): Diary(id: "null", date: "null", attendanceObservation: "null")]),
        Classroom(className: "Turma C", teachers: [UUID()], students: [
            Student(name: "", gender: "", address: "", birthDate: "", age: "", mainPhone: "", otherPhone: "", ingressDate: "", foodRestrictions: [""], allergies: [""], bloodType: "", preferredHospital: "", missingVaccines: [""], studentPhoto: "", studentClass: "", firstResponsible: "", secondaryResponsible: "", email: "", password: "", parentID: "", schoolID: "")
        ], shift: "Noite", activityDiary: [Date(): Diary(id: "null", date: "null", attendanceObservation: "null")]),
    ]



}
