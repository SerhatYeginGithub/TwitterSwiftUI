//
//  LoginView.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            AuthHeaderView(title1: "Hello.", title2: "Welcome back")
            VStack(spacing: 40){
                CustomInputField(imageName: "envelope", placeholder: "Email", text: $email)
                CustomInputField(imageName: "lock", placeholder: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            HStack {
                Spacer()
                NavigationLink {
                    Text("Reset password view...")
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                        .padding(.top)
                        .padding(.trailing, 24)
                }

            }
            
            Button {
                
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)

            Spacer()
            
            NavigationLink {
                RegistrationView()
                    .navigationBarHidden(true)
            } label: {
                HStack {
                    Text("Don't have an account?")
                        .font(.footnote)
                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
            .foregroundStyle(Color(.systemBlue))

        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

#Preview {
    LoginView()
}
