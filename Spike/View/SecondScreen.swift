//
//  SecondScreen.swift
//  Spike
//
//  Created by Alexander Suprun on 27.07.2023.
//

import SwiftUI
import Foundation

struct SecondScreen: View {
    @State private var petin = PetIN.examples()
    var body: some View {
        NavigationView{
            VStack{
                topView()
                ScrollView(.vertical, showsIndicators: false){
                    VStack {
                        ForEach(petin) { petin in
                                                    NavigationLink(
                                                        destination: DetailScreen(petin:petin),
                                                        label: { PetsCardView( petin:petin)
                            
                                                        })
                                                    .navigationBarHidden(true)
                                                    .foregroundColor(.black)
                        }
                    }
                }
                
            }.background(Color(red: 0.861, green: 0.802, blue: 0.768, opacity: 0.244))
        }
    }
}
struct SecondScreen_Previews : PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}


struct topView: View {
    var body: some View {
        
        HStack{
            VStack(alignment: .leading){
                Text("Hey, Spike")
                    .bold()
                    .font(.title)
                Text("Adopt a new friend near you!")
                Text("Nearbly result")
                    .padding(.top)
                    .bold()
            }
            
            
            Spacer()
            
            Button( action:{}){
                Image(systemName: "lightbulb")
                    .foregroundColor(Color.black)
                    .font(.system(size: 35))
               
            }
            
        }.padding(.horizontal)
    }
}

struct PetsCardView: View {
    let petin : PetIN
    
    var body: some View {
        VStack{
            Rectangle()
                .padding(.horizontal, 10)
                .frame(maxWidth:.infinity)
                .frame(height: 170)
                .foregroundColor(.white)
                .cornerRadius(30)
                .overlay(
            HStack{
                Image(petin.imageName)
                    .resizable()
                    .frame(width: 120, height: 120)
                    .cornerRadius(20)
                VStack(alignment:.leading,spacing: 13){
                    Text(petin.name)
                        .font(.title)
                        .bold()
                    HStack() {
                        Text(petin.age)
                        Text("|")
                        Text(petin.type) }
                    
                    
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(Color.red)
                            .font(.system(size: 20))
                        Text(petin.distance)
                            
                    }.padding(.top)
                }.padding()
                
                VStack{
                    Image(petin.gender)
                        .resizable()
                        .frame(width: 50,height: 30)
                    
                    Text(petin.online)
                        .padding(.top, 57)
                        .font(.system(size:10))
                }
                
                
            }
            .padding(.horizontal)
            )
        }
    }
}
