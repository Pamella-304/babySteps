//
//  SchoolUser.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 19/06/24.
//

struct Teacher: Identifiable {
    var id: String = ""
    var firstName: String
    var lastName: String
    var authID: String = ""
    var roomClasses: [RoomClass]
    var announcements: [Announcement]
    var chatMessages: [String]
    var activities: [Activity]
    var email: String
    //var studentID: String = ""
    //var studentName: String = ""
    //var userType: String = ""
    var userName: String = ""
    var students: [Student]
    
    init() {
        self.id = "12312312312"
        self.firstName = "Lavinia"
        self.lastName = "Gabriela"
        self.authID = "12342131231312"
        self.roomClasses = [
            RoomClass(
                id: "01",
                shift: "shift",
                name: "Unicórnio",
                students: ["Mário", "Qual Mário"]
            )
        ]
        self.announcements = [
            Announcement(
                id: "02",
                title: "Reunião de Pais e Mestres",
                description: "Reunião de pais no período integral para todas as turmas.",
                photo: "foto01",
                dateEvent: "01/07/2024",
                writerName: "Professora Maria",
                type: .events
            ),
            Announcement(
                id: "03",
                title: "Festa Julina",
                description: "Convite para a festa julina da creche Carrossel, convite para todos os familiares e crianças.",
                photo: "foto02",
                dateEvent: "06/07/2024",
                writerName: "Professora Maria",
                type: .events
            ),
            Announcement(
                id: "04",
                title: "Reunião de Pais e Mestres",
                description: "Reunião de pais no período integral para todas as turmas.",
                photo: "foto01",
                dateEvent: "01/07/2024",
                writerName: "Professora Maria",
                type: .meetings
            ),
            Announcement(
                id: "05",
                title: "Horta Comunitária",
                description: "Dia de plantação e colheita com as turmas da creche Carrossel, convite para todos os familiares acompanharem o desenvolvimento das crianças.",
                photo: "foto03",
                dateEvent: "10/07/2024",
                writerName: "Professora Juliana",
                type: .meetings
            )
        ]
        self.chatMessages = []
        self.activities = [
            Activity(
                title: "Dia do brinquedo preferido",
                description: "Responsáveis trazer um brinquedo de seu filho",
                image: "foto01"
            ),
            Activity(
                title: "Leiturinha",
                description: "Leitura cantada para todas as turmas",
                image: "foto01"
            ),
            Activity(
                title: "Pintura e desenho",
                description: "Tintas naturais para todas as crianças criarem seus desenhos.",
                image: "foto01"
            ),
            Activity(
                title: "Dia de parquinho",
                description: "Todas as turmas terão uma hora de acesso aos parquinhos com supervisão dos monitores.",
                image: "foto01"
            )
        ]
        self.email = "lavis.ga@icloud.com"
        self.userName = "lavisga"
        
        self.students = [
            Student(
                name: "Laura Collins",
                gender: "Feminino",
                address: "Rua tal de tal",
                birthDate: "01/01/2023",
                age: "1",
                mainPhone: "019992229",
                otherPhone: "01999933344",
                ingressDate: "01/02/2023",
                foodRestrictions: ["Laticinios"],
                allergies: ["hbsaksn"],
                bloodType: "A",
                preferredHospital: "ahsuas",
                missingVaccines: [],
                studentPhoto: "",
                studentClass: "",
                firstResponsible: "",
                secondaryResponsible: "",
                email: "", password: "", parentID: "", schoolID: ""),
            Student(
                name: "Laura Collins",
                gender: "Feminino",
                address: "Rua tal de tal",
                birthDate: "01/01/2023",
                age: "1",
                mainPhone: "019992229",
                otherPhone: "01999933344",
                ingressDate: "01/02/2023",
                foodRestrictions: ["Laticinios"],
                allergies: ["hbsaksn"],
                bloodType: "A",
                preferredHospital: "ahsuas",
                missingVaccines: [],
                studentPhoto: "",
                studentClass: "",
                firstResponsible: "",
                secondaryResponsible: "",
                email: "", password: "", parentID: "", schoolID: ""),
            Student(
                name: "Laura Collins",
                gender: "Feminino",
                address: "Rua tal de tal",
                birthDate: "01/01/2023",
                age: "1",
                mainPhone: "019992229",
                otherPhone: "01999933344",
                ingressDate: "01/02/2023",
                foodRestrictions: ["Laticinios"],
                allergies: ["hbsaksn"],
                bloodType: "A",
                preferredHospital: "ahsuas",
                missingVaccines: [],
                studentPhoto: "",
                studentClass: "",
                firstResponsible: "",
                secondaryResponsible: "",
                email: "", password: "", parentID: "", schoolID: "")
        ]
    }
    
    init(id: String, firstName: String, lastName: String, authID: String, roomClasses: [RoomClass], announcements: [Announcement], chatMessages: [String], activities: [Activity], email: String, userName: String, students: [Student]) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.authID = authID
        self.roomClasses = roomClasses
        self.announcements = announcements
        self.chatMessages = chatMessages
        self.activities = activities
        self.email = email
        self.userName = userName
        self.students = students
    }
}
