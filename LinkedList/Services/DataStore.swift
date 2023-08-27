//
//  DataStore.swift
//  LinkedList
//
//  Created by Kirill Taraturin on 27.08.2023.
//

import Foundation

class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Pavel", "Alex", "Jack", "Robert",
        "Bruce", "Alton", "Jule", "Hola"
    ]
    
    let surnames = [
        "Stones", "Zinchenko", "Crowd", "Nicklson",
        "Rooney", "Taraturin", "Idrissov", "Nevskii"
    ]
    
    let emails = [
        "apples@google.com", "rainbow@mail.ru", "mouse@gmail.com",
        "screener1@list.ru", "helloWorld@apple.com", "afternight2@mail.ru",
        "pillow11@gmail.com", "bigApples@apple.com"
    ]
    
    let numbers = [
        "89781230921", "77076775760", "81329431288", "89083660911",
        "82124210943", "87771112233", "89750001200", "89991231238"
    ]
    
    private init() {}
}

