//
//  ProfileView.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace var animation
    var body: some View {
        VStack {
            headerView
            actionButtons
            userInfoDetails
            tweetFilterBar
            tweetsView
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
}

private extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundStyle(.white)
                        .offset(x: 18, y: 10)
                }
                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 24)

            }
        }
        .frame(height: 96)
    }
    var actionButtons: some View {
        HStack(spacing: 12) {
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay (Circle().stroke(.gray, lineWidth: 0.75)
                )
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .bold()
                    .frame(width: 120, height: 32)
                    .foregroundStyle(.black)
                    .overlay(Capsule().stroke(.gray, lineWidth: 0.75))
            }
        }
        .padding(.trailing)
    }
    
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4){
            HStack {
                Text("Heath Ledger")
                    .font(.title2).bold()
                Image(systemName: "checkmark.seal.fill")
                    .foregroundStyle(.blue)
                Spacer()
            }
            Text("@Joker")
                .font(.subheadline)
                .foregroundStyle(.gray)
            Text("Your moms favorite villain")
                .font(.subheadline)
                .padding(.vertical)
            HStack(spacing: 24){
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Gotham, NY")
                }
                HStack {
                    Image(systemName: "link")
                    Text("www.thejoker.com")
                }
            }
            .font(.caption)
            .foregroundStyle(.gray)
            UserStatsView()
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
    var tweetFilterBar: some View {
        HStack {
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { item in
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundStyle(selectedFilter == item ? .black : .gray)
                    
                    if selectedFilter == item {
                        Capsule()
                            .frame(height: 3)
                            .foregroundStyle(Color(.systemBlue))
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundStyle(.clear)
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut){
                        self.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(y: 16))
    }
    
    var tweetsView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 9, id: \.self) { _ in
                    TweetRowView()
                }
            }
        }
    }
}
