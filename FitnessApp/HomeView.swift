//
//  HomeView.swift
//  FitnessApp
//
//  Created by Md Tawhid Hasan Rafi on 8/8/25.
//

import SwiftUI

struct HomeView: View {
    
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    
    
    
    
    
    
    var body: some View {
        
        VStack{
            Text("Welcome")
                .font(.largeTitle)
                .padding()
            
            
            
            
            
            HStack{
                Spacer()
                
                
                
                
                VStack(alignment: .leading, spacing: 20){
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("Calories")
                            .font(.callout)
                            .bold()
                            .foregroundColor(.red)
                        
                        Text("123 kcal")
                            .bold()
                    }
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("Active")
                            .font(.callout)
                            .bold()
                            .foregroundColor(.green)
                        
                        Text("52 mins")
                            .bold()
                    }
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("Stand")
                            .font(.callout)
                            .bold()
                            .foregroundColor(.blue)
                        
                        Text("8 hours")
                            .bold()
                    }
                    

                }
                
                
                

                
             Spacer()
                
                
                ZStack{

                    ProgressCircleView(progress:$calories, goal:600, color:.red)
                    ProgressCircleView(progress:$active, goal:60, color:.green)
                        .padding(.all, 20)
                    ProgressCircleView(progress:$stand, goal:12, color:.blue)
                        .padding(.all, 40)
                    
                }
                .padding(.horizontal)
                Spacer()
                
                
            }
            .padding()
            
            
            
            Spacer()
        }
        
        
    }
}

#Preview {
    HomeView()
}
