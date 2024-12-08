//
//  AuthHeaderView.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

struct AuthHeaderView: View {
    let title1: String
    let title2: String
    var body: some View {
        VStack(alignment: .leading){
            Text(title1)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(title2)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .padding(.leading)
        .frame(width: UIScreen.main.bounds.width, height: 260, alignment: .leading)
        .background(Color(.systemBlue))
        .foregroundStyle(.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))
        
    }
}

#Preview {
    AuthHeaderView(title1: "", title2: "")
}
