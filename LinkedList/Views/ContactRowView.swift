//
//  ContactRowView.swift
//  LinkedList
//
//  Created by Kirill Taraturin on 27.08.2023.
//

import SwiftUI

struct ContactRowView: View {
    
    let contact: Person
    
    var body: some View {
        HStack {
            
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(contact: Person(name: "Kirill", surname: "Taraturin", phoneNumber: "98679444092", email: "kirilltaraturin747@gmail.com"))
    }
}
