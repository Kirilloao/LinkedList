//
//  Person.swift
//  LinkedList
//
//  Created by Kirill Taraturin on 27.08.2023.
//

import Foundation

struct Person: Identifiable {
    var id: String { name }
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        name + " " + surname
    }
}

extension Person {
    static func getPersons() -> [Person] {
        
        var persons = [Person]()
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let phones = DataStore.shared.numbers.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount{
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phones[index],
                email: emails[index]
                
            )
            persons.append(person)
        }
        
        return persons
    }
}
