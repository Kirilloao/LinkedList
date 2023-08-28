//
//  AllContactsView.swift
//  LinkedList
//
//  Created by Kirill Taraturin on 27.08.2023.
//

import SwiftUI

struct AllContactsView: View {
    
    private let contacts = Person.getPersons()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(contacts) { contact in
                    Section(header: Text(contact.fullName)) {
                        ContactRowView(
                            imageName: "phone",
                            text: contact.phoneNumber
                        )
                        ContactRowView(
                            imageName: "tray",
                            text: contact.email
                        )
                    }
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

struct AllContactsView_Previews: PreviewProvider {
    static var previews: some View {
        AllContactsView()
    }
}
