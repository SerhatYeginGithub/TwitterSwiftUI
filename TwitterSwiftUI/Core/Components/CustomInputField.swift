//
//  CustomInputField.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

struct CustomInputField: View {
    let imageName: String
    let placeholder: String
    @Binding var text: String
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color(.darkGray))
                
                TextField(placeholder, text: $text)
            }
            
            Divider()
                .background(Color(.darkGray))
        }
    }
}
