//
//  ContactDetailtsView.swift
//  LinkedList
//
//  Created by Kirill Taraturin on 27.08.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
                .foregroundColor(.blue)
            Divider()
            HStack {
                VStack(alignment: .leading, spacing: 20) {
                    Image(systemName: "phone")
                        .foregroundColor(.blue)
                    Image(systemName: "tray")
                        .foregroundColor(.blue)
                }
                VStack(alignment: .leading, spacing: 8) {
                    Text(person.phoneNumber)
                    Divider()
                    Text(person.email)
                }
                Spacer()
            }
            Spacer()
                .padding()
        }
        .padding()
        .cornerRadius(20)
        .navigationTitle(person.fullName)
    }
}

struct ContactDetailtsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person(
            name: "123",
            surname: "123",
            phoneNumber: "362044520468",
            email: "kirill@gmail.com"
        ))
    }
}
