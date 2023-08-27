//
//  ContentView.swift
//  LinkedList
//
//  Created by Kirill Taraturin on 27.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactListView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
