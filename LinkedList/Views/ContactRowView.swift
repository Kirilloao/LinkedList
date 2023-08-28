//
//  ContactRowView.swift
//  LinkedList
//
//  Created by Kirill Taraturin on 27.08.2023.
//

import SwiftUI

struct ContactRowView: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(imageName: "phone", text: "123123")
    }
}
