//
//  FeedView.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView: Bool = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetRowView()
                    }
                }
            }
            .refreshable {
                
            }
            
            Button {
                showNewTweetView.toggle()
            } label: {
                Image(systemName: "pencil")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color(.systemBlue))
                    .clipShape(Circle())
                    .padding()
                    
                    
                
                
            }

        }
        .fullScreenCover(isPresented: $showNewTweetView) {
            NewTweetView()
        }
    }
}

#Preview {
    FeedView()
}
