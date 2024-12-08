//
//  RegistrationView.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var username: String = ""
    @State private var fullname: String = ""
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            AuthHeaderView(title1: "Get Started.", title2: "Create your account")
            VStack(spacing: 40){
                CustomInputField(imageName: "envelope", placeholder: "Email", text: $email)
                CustomInputField(imageName: "person", placeholder: "Username", text: $username)
        
                CustomInputField(imageName: "person", placeholder: "Fullname", text: $fullname)
                    CustomInputField(imageName: "lock", placeholder: "Password", text: $password)
            }
            .padding(32)
            
            Button {
                print("Sign Up")
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)

            Spacer()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 0){
                    Text("Already have an account?")
                        .font(.footnote)
                    Text(" Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
            .foregroundStyle(Color(.systemBlue))
        }
        .ignoresSafeArea()
    }
}

#Preview {
    RegistrationView()
}
