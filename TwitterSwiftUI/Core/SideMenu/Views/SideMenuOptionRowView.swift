//
//  SideMenuOptionRowView.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    let viewModel: SideMenuViewModel
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundStyle(.gray)
            Text(viewModel.title)
                .font(.subheadline)
                .foregroundStyle(.black)
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

