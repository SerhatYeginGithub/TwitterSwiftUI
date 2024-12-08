//
//  SideMenuView.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32){
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                VStack(alignment: .leading, spacing: 4) {
                    Text("Bruce Wayne")
                        .font(.headline)
                    Text("@batman")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    
                }
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
                switch option {
                case .profile:
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuOptionRowView(viewModel: option)
                    }
                case .lists:
                    SideMenuOptionRowView(viewModel: option)
                case .bookmarks:
                    SideMenuOptionRowView(viewModel: option)
                case .logout:
                    Button {
                        // TODO: add action
                    } label: {
                        SideMenuOptionRowView(viewModel: option)
                    }

                }
            }
            Spacer()
        }
    }
}

#Preview {
    SideMenuView()
}
