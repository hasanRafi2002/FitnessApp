//
//  WorkoutCard.swift
//  FitnessApp
//
//  Created by Md Tawhid Hasan Rafi on 21/8/25.
//

import SwiftUI

struct Workout{
    let id: Int
    let title: String
    let image: String
    let tintColor: Color
    let duration: String
    let date: String
    let calories: String
}
 

struct WorkoutCard: View {
//    @State var workout: Workout
    
    var body: some View {
        
        HStack{
            Image (systemName: "figure.run")
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .foregroundColor(.green)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
            
            VStack(spacing: 16){
                HStack{
                    Text("Running")
                    Spacer()
                    Text("23 mins")
                }

                HStack{
                    Text("Aug 3")
                    Spacer()
                    Text("341 kcal")
                }
            }
            
        }
        
        .padding()
            }
}

#Preview {
    WorkoutCard()
}
