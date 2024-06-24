//
//  CloudKitManager.swift
//  babySteps
//
//  Created by Pamella Alvarenga on 20/06/24.
//

import CloudKit
import Foundation

class CloudKitManager {
    
    static let shared = CloudKitManager()
    private let publicDatabase: CKDatabase

    private init() {
           let container = CKContainer(identifier: "iCloud.babyStepsTeam.AppleAcademy")
           self.publicDatabase = container.publicCloudDatabase
       }
    
    func saveStudent(student: Student) {
        let record = CKRecord(recordType: "Student")
        record["id"] = student.id as CKRecordValue
        record["name"] = student.name as CKRecordValue
        record["gender"] = student.gender as CKRecordValue
        record["address"] = student.address as CKRecordValue
        record["birthDate"] = student.birthDate as CKRecordValue
        record["age"] = student.age as CKRecordValue
        record["mainPhone"] = student.mainPhone as CKRecordValue
        record["otherPhone"] = student.otherPhone as CKRecordValue
        record["ingressDate"] = student.ingressDate as CKRecordValue
        record["foodRestrictions"] = student.foodRestrictions as CKRecordValue
        record["allergies"] = student.allergies as CKRecordValue
        record["bloodType"] = student.bloodType as CKRecordValue
        record["preferredHospital"] = student.preferredHospital as CKRecordValue
        record["missingVaccines"] = student.missingVaccines as CKRecordValue
        record["studentPhoto"] = student.studentPhoto as CKRecordValue
        record["studentClass"] = student.studentClass as CKRecordValue
        record["firstResponsible"] = student.firstResponsible as CKRecordValue
        record["secondaryResponsible"] = student.secondaryResponsible as CKRecordValue
        record["selected"] = student.selected as CKRecordValue
        record["email"] = student.email as CKRecordValue
        record["password"] = student.password as CKRecordValue
        record["announcements"] = student.announcements as CKRecordValue
        record["parentID"] = student.parentID as CKRecordValue
        record["schoolID"] = student.schoolID as CKRecordValue

//        let publicDatabase = CKContainer.default().publicCloudDatabase
        publicDatabase.save(record) { record, error in
            if let error = error {
                print("Error saving student: \(error.localizedDescription)")
            } else {
                print("Student saved successfully!")
            }
        }
    }
    
    func saveDiary(diary: Diary) {
        let record = CKRecord(recordType: "Diary")
        record["id"] = diary.id as CKRecordValue
        record["studentId"] = diary.studentId as CKRecordValue
        record["date"] = diary.date as CKRecordValue
        record["water"] = diary.water.satisfaction as CKRecordValue
        record["waterObservation"] = diary.water.observation as CKRecordValue
        record["milk"] = diary.milk.satisfaction as CKRecordValue
        record["milkObservation"] = diary.milk.observation as CKRecordValue
        record["fruit"] = diary.fruit.satisfaction as CKRecordValue
        record["fruitObservation"] = diary.fruit.observation as CKRecordValue
        record["lunch"] = diary.lunch.satisfaction as CKRecordValue
        record["lunchObservation"] = diary.lunch.observation as CKRecordValue
        record["snackTime"] = diary.snackTime.satisfaction as CKRecordValue
        record["snackTimeObservation"] = diary.snackTime.observation as CKRecordValue
        record["attendance"] = diary.attendance as CKRecordValue
        record["attendanceObservation"] = diary.attendanceObservation as CKRecordValue
        record["completed"] = diary.completed as CKRecordValue

//        let publicDatabase = CKContainer.default().publicCloudDatabase
        publicDatabase.save(record) { record, error in
            if let error = error {
                print("Error saving diary: \(error.localizedDescription)")
            } else {
                print("Diary saved successfully!")
            }
        }
    }
    
}



//Fazendo um teste:
// Salvar um novo estudante no banco de dados
class TestManager {
    let cloudKitManager = CloudKitManager.shared

    
    func testSaveStudent() {
        let joao = Student(
            id: UUID().uuidString, // Gera um novo UUID para o id
            name: "Joao",
            gender: "Masculino",
            address: "Rua Exemplo, 123",
            birthDate: "01/01/2010",
            age: "14",
            mainPhone: "123456789",
            otherPhone: "987654321",
            ingressDate: "15/02/2022",
            foodRestrictions: ["Nenhuma"],
            allergies: ["Nenhuma"],
            bloodType: "O+",
            preferredHospital: "Hospital Exemplo",
            missingVaccines: ["Nenhuma"],
            studentPhoto: "joao_photo_url",
            studentClass: "8A",
            firstResponsible: "Pai de Joao",
            secondaryResponsible: "Mãe de Joao",
            selected: false,
            email: "joao@example.com",
            password: "senha123",
            announcements: ["Advertencia", "Suspensão"],
            parentID: "parent123",
            schoolID: "school123"
        )
        
        CloudKitManager.shared.saveStudent(student: joao)
        print("salvo com sucesso")
        
    }
}


