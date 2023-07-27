//
//  HomeView.swift
//  Spike
//
//  Created by Alexander Suprun on 27.07.2023.
//
import SwiftUI
import Foundation

struct HomeView: View {
    private let screen = UIScreen.main.bounds.width
    @ObservedObject private var userViewModel = UserViewModel()
    @State var presentAlert = false

    var body: some View {
        
        
        ZStack{
            
            Color(red: 0.009992365725, green: 0.01994397864, blue: 0.1729393005)
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false){
                
                Image("dog")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: screen/1.25, height: screen/1.25)
                Text("Authorization")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .padding(8)
                    .colorInvert()
                
                VStack(spacing:20){
                    
                    CustomTextField(title: "Username", text: $userViewModel.username, prompt: userViewModel.usernameMessage)
                        .autocapitalization(.none)
                    
                    
                    CustomTextField(title: "Password", text: $userViewModel.password, prompt: userViewModel.passwordMessage,isSecure: true )
                    CustomTextField(title: "Password again", text: $userViewModel.passwordAgain, prompt: userViewModel.passwordMessage, isSecure: true)
                    
                    
                    
                    Button(action: { self.signUp() }) {
                        ZStack {
                            if userViewModel.isValid {
                                AnimatedGradient(colors: [Color.cyan, Color.purple])
                            } else  {
                                Rectangle()
                                    .foregroundColor(.gray)
                            }
                            Text("Login")
                                .foregroundColor(.white)
                                .fontDesign(.rounded)
                                .fontWeight(.semibold)
                        }
                        .frame(width: 120, height: 45)
                        .cornerRadius(10)
                    }.disabled(!self.userViewModel.isValid)
                    
                }
                .sheet(isPresented: $presentAlert) {
                    SecondScreen()
                }
                
            }
        }
    }
    func signUp() {
        self.presentAlert = true
        
    }
}
