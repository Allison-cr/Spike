//
//  Data.swift
//  Spike
//
//  Created by Alexander Suprun on 27.07.2023.
//

import Foundation

struct PetIN:Identifiable {
    let id = UUID()
    let name : String
    let imageName : String
    let gender : String
    let description : String
    let age : String
    let color : String
    let weight : String
    let type : String
    let distance : String
    let online: String
    
    
    static func examples() -> [PetIN] {
        [PetIN(name: "Parkinson", imageName: "Parkinson", gender: "Male", description: "The dog is a pet animal. A dog has sharp teeth so that it can eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.", age: "1.4", color: "Brown", weight: "14 kg", type: "Playful",distance: "37m away",online: "12 min ago"),
         PetIN(name: "Raul", imageName: "Raul", gender: "Male", description: "The dog is a pet animal. A dog has sharp teeth so that it can eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.", age: "2.7", color: "Brown", weight: "12 kg",type: "Playful",distance: "381m away",online: "23 min ago"),
         PetIN(name: "Ernest", imageName: "Ernest", gender: "Female", description: "The dog is a pet animal. A dog has sharp teeth so that it can eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.", age: "1.6", color: "Black", weight: "15 kg",type: "Playful",distance: "38m away",online: "32 min ago"),
         PetIN(name: "Evgenui", imageName: "Evgenui", gender: "Male", description: "The dog is a pet animal. A dog has sharp teeth so that it can, eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.", age: "0.8", color: "White", weight: "16 kg",type: "Playful",distance: "52m away",online: "43 min ago"),
         PetIN(name: "Andrew", imageName: "Andrew", gender: "Female", description: "The dog is a pet animal. A dog has sharp teeth so that it can eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.", age: "1.9", color: "White", weight: "21 kg",type: "Playful",distance: "65m away",online: "4 min ago"),
         PetIN(name: "Rawid", imageName: "Rawid", gender: "Female", description: "The dog is a pet animal. A dog has sharp teeth so that it can eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.", age: "3.2", color: "Brown", weight: "22 kg",type: "Playful",distance: "73m away",online: "6 min ago"),
         PetIN(name: "Lyi", imageName: "Lyi", gender: "Male", description: "The dog is a pet animal. A dog has sharp teeth so that it can eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.", age: "1.2", color: "Black", weight: "10 kg",type: "Playful",distance: "112m away",online: "11 min ago"),
         PetIN(name: "Richiel", imageName: "Raul", gender: "Female", description: "The dog is a pet animal. A dog has sharp teeth so that it can eat flesh very easily, it has four legs, two ears, two eyes, a tail, a mouth, and a nose. It is a very clever animal and is very useful in catching thieves. It runs very fast, barks loudly and attacks the strangers.", age: "0.7", color: "Brown", weight: "11 kg",type: "Playful",distance: "381m away",online: "48 min ago")
        ]
    }
}
