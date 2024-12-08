//
//  TextArea.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    
    init(_ placeholder: String, text: Binding<String>) {
        self._text = text
        self.placeholder = placeholder
    }
    var body: some View {
        ZStack(alignment: .topLeading) {
            TextEditor(text: $text)
                .padding(4)
            
            if text.isEmpty {
                Text(placeholder)
                    .foregroundStyle(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
           
        }
        .font(.body)
    }
}

#Preview {
    TextArea("placeholder", text: .constant(""))
}
