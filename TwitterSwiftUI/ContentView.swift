//
//  ContentView.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu: Bool = false
    var body: some View {
        NavigationStack {
            ZStack(alignment: .topLeading){
                MainTabView()
                
                if showMenu {
                    Rectangle()
                        .opacity(showMenu ? 0.2 : 0)
                        .ignoresSafeArea(.container)
                        .onTapGesture {
                            if showMenu {
                                withAnimation(.easeOut) {
                                    showMenu = false
                                }
                               
                            }
                        }
                }
                if showMenu {
                    
                        SideMenuView()
                            .frame(width: 300)
                            .background(.white)
                  
                  
                }
               
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        withAnimation(.easeIn){
                            showMenu.toggle()
                        }
                    } label: {
                        Circle()
                            .frame(width: 32, height: 32)
                    }
                    
                }
            }
            .navigationBarHidden(showMenu)
            .onAppear(){
                showMenu = false
            }
        }
       
    }
}

#Preview {
    ContentView()
}
