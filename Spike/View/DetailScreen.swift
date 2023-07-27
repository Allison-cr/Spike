//
//  DetailScreen.swift
//  Spike
//
//  Created by Alexander Suprun on 27.07.2023.
//

import Foundation
import SwiftUI
import CoreData


struct DetailScreen: View {
     @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    let petin : PetIN
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    FirstInfo(petin:petin)
                    SecondInfo(petin:petin)
                    
                    ThirdView(petin:petin)
                    
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
       .navigationBarBackButtonHidden(true)
       .navigationBarItems(leading: CustomBackButtonView(action: {presentationMode.wrappedValue.dismiss()}),trailing: Image(systemName: "heart.fill")
        .foregroundColor(.white)

          )
    }
}
//struct DetailScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailScreen( petin: PetIN)
//    }
//}

struct FirstInfo: View {
    let petin: PetIN
    var body: some View {
        VStack {
            ScrollView{
                
                Image( "Parkinson")
                    .resizable(capInsets: EdgeInsets(top: 1.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .aspectRatio(contentMode: .fit)
                
                
                VStack(alignment: .leading){
                    
                    HStack{
                        Text(petin.name)
                            .font(.largeTitle)
                            .bold()
                        Spacer()
                        Image(petin.gender)
                            .resizable()
                            .padding([.top, .trailing])
                            .frame(width: 70,height: 50)
                        
                        
                    }
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(Color.red)
                            .font(.system(size: 20))
                        Text(petin.distance)
                    }
                    
                    Text(petin.online)
                        .font(.system(size : 13))
                        .padding(.top, 3.0)
                    
                    
                    Text("My story")
                        .font(.title2)
                        .padding(.top)
                        .bold()
                    Text(petin.description)
                        .padding(.top)
                    Text("Quick info")
                        .bold()
                        .font(.title)
                        .padding(.top)
                        .frame(alignment: .leading)
                }
                .padding(.leading)
            }
           
        }
    }
}

struct SecondInfo: View {
    let petin: PetIN
    var body: some View {
        
        VStack {
            
                
            HStack{
                
                Rectangle()
                    .cornerRadius(15)
                    .frame(width: 120, height: 100)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.023, brightness: 0.976))
                    .overlay(
                        VStack{
                            Text(petin.age)
                                .font(.title2)
                                .foregroundColor(Color.black)
                            
                          
                            Text("Age")
                                .foregroundColor(Color.gray)
                                
                        }
                            .padding()
                    )
                Rectangle()
                    .cornerRadius(15)
                    .frame(width: 120, height: 100)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.023, brightness: 0.976))
                    .overlay(
                        VStack{
                            Text(petin.color)
                                .font(.title2)
                                .foregroundColor(Color.black)
                          
                            
                            Text("Color")
                                .foregroundColor(Color.gray)
                        }
                             .padding()
                    )
                Rectangle()
                    .cornerRadius(15)
                    .frame(width: 120, height: 100)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.023, brightness: 0.976))
                    .overlay(
                        VStack{
                            Text(petin.weight)
                                .font(.title2)
                                .foregroundColor(Color.black)
                            Text("Weight")
                                .foregroundColor(Color.gray)
                        }
                            .padding()
                    )
                
                
            }.bold()
        }
    }
}

struct ThirdView: View {
    
    let petin: PetIN
    var body: some View {
        VStack(alignment: .leading){
            Text("Owner info")
                .bold()
                .font(.title2)
                .padding(.top)
            
            Rectangle()
                .cornerRadius(15)
                .frame(width: 350, height: 100)
                .foregroundColor(Color(hue: 1.0, saturation: 0.023, brightness: 0.976))
                .overlay(
                    HStack{
                        Image("Parkinson")
                            .resizable()
                            .frame(width: 65,height: 65)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading){
                            Text("David Berlin")
                                .font(.title2)
                                .padding(.bottom)
                            Text("Socialist & Developer")
                                .foregroundColor(.gray)
                        }.padding()
                        
                        
                        Button(action: {
                            // Действие, которое будет выполняться при нажатии кнопки
                            
                        }) {
                            Image(systemName: "ellipsis.bubble.fill")
                                .frame(width: 50,height: 50)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .clipShape(Circle())
                        }
                    }
                )
            Button(action: {
                // Действие, которое будет выполняться при нажатии кнопки
                
            }) {
                Text("Adopt me")
                    .bold()
                    .frame(width: 350, height: 70)
                    .font(.title)
                    .foregroundColor(.white)
                
                    .background(Color.blue)
                    .cornerRadius(25)
            }.padding(.top)
            
            
        }
    }
}

struct CustomBackButtonView: View {
    let action: ()-> Void
           
    var body: some View {
        Button(action: action, label: {
            Image(systemName: "chevron.backward")
                .padding(.all, 12)
                .foregroundColor(Color.white)
                .cornerRadius(9)
        })
    }
}
