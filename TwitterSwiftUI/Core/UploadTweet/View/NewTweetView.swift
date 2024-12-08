//
//  NewTweetView.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption: String = ""
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundStyle(Color(.systemBlue))
                }
                Spacer()
                Button {
                    print("tweet")
                } label: {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                }
            }
            .padding()
            
            HStack(alignment: .top){
                Circle()
                    .frame(width: 64, height: 64)
                TextArea("What's happening?", text: $caption)
                
            }
            .padding()
        }
    }
}

#Preview {
    NewTweetView()
}
