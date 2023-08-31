//
//  AllContactsView.swift
//  LinkedList
//
//  Created by Kirill Taraturin on 27.08.2023.
//

import SwiftUI

struct SectionsView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { person in
                Section(header: Text(person.fullName).font(.headline)) {
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
                .textCase(.none)
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

struct AllContactsView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView(contacts: Person.getContactList())
    }
}
