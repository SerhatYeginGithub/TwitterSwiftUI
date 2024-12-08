//
//  TweetRowView.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundStyle(Color(.systemBlue))
                // user info & tweet caption
                VStack(alignment: .leading, spacing: 4){
                    HStack {
                        Text("Bruce Wayne")
                            .font(.subheadline).bold()
                        Text("@batman")
                            .foregroundStyle(.gray)
                            .font(.caption)
                        Text("2w")
                            .foregroundStyle(.gray)
                            .font(.caption)
                    }
                    
                    Text("I believe in Harvey Dent")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            // Action Buttons
            HStack {
                Button {
                   // Action goes here
                } label: { Image(systemName: "bubble.left") }
                Spacer()
                Button {
                   // Action goes here
                } label: { Image(systemName: "arrow.2.squarepath") }
                Spacer()
                Button {
                   // Action goes here
                } label: { Image(systemName: "heart") }
                Spacer()
                Button {
                   // Action goes here
                } label: { Image(systemName: "bookmark") }

            }
            .foregroundStyle(.gray)
            .padding()
            Divider()
        }
        .padding()
    }
}

#Preview {
    TweetRowView()
}
