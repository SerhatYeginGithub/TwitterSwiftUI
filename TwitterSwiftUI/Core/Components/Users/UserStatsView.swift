//
//  UserStatsView.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24){
            HStack(spacing: 4){
                Text("807")
                    .font(.subheadline).bold()
                Text("Following")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            HStack(spacing: 4){
                Text("6.9M")
                    .font(.subheadline).bold()
                Text("Followers")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    UserStatsView()
}
