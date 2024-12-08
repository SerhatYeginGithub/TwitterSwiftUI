//
//  UserRowView.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12){
            Circle()
                .foregroundStyle(.black)
                .frame(width: 48, height: 48)
            VStack(alignment: .leading, spacing: 4){
                Text("Joker")
                    .foregroundStyle(.black)
                    .font(.subheadline).bold()
                Text("Heath Ledger")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

#Preview {
    UserRowView()
}
