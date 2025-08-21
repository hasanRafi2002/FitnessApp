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
    
    
    
    
    var mockActivitys = [
        Activity(id: 0, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9000"),
        Activity(id: 1, title: "Today steps", subtitle: "Goal 2,000", image: "figure.walk", tintColor: .red, amount: "900"),
        Activity(id: 2, title: "Today steps", subtitle: "Goal 15,000", image: "figure.walk", tintColor: .blue, amount: "7000"),
        Activity(id: 3, title: "Today steps", subtitle: "Goal 11,000", image: "figure.walk", tintColor: .purple, amount: "5000")
    ]
    
    
    
    var body: some View {
        NavigationStack{
            
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading){
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
                        
                        
                        HStack{
                            Text("Fitness Activity")
                                .font(.title2)
                            Spacer()
                            
                            Button{
                                print("show more")
                            } label: {
                                Text("Show more")
                                    .padding(.all, 10)
                                    .foregroundColor(.white)
                                    .background(.blue)
                                    .cornerRadius(20)
                            }
                            
                            
                            
                        }
                        .padding(.horizontal)
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)){
                            
                            ForEach(mockActivitys, id: \.id){
                                activity in ActivityCard(activity: activity)
                            }
                        }
                        
                        .padding(.horizontal)
                        
                        
                        HStack{
                            Text("Recent Activities")
                                .font(.title2)
                            Spacer()
                            
                            NavigationLink{
                                EmptyView()
                            } label: {
                                Text("Show more")
                                    .padding(.all, 10)
                                    .foregroundColor(.white)
                                    .background(.blue)
                                    .cornerRadius(20)
                            }
                            
                            
                            
                        }
                        .padding(.horizontal)
                        
                        
                        
                    }
                    
                }
            }
        }
    }


#Preview {
    HomeView()
}
