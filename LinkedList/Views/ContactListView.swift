//
//  ContactListView.swift
//  LinkedList
//
//  Created by Kirill Taraturin on 27.08.2023.
//

import SwiftUI

struct ContactListView: View {
    private let contacts = Person.getPersons()
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(destination: ContactDetailsView(person: contact)) {
                    Text(contact.fullName)
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
