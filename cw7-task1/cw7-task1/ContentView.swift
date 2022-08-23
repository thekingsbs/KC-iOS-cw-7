//
//  ContentView.swift
//  cw7-task1
//
//  Created by Saleh Al Sedrah on 23/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    var students = [StudentDetails(fullName: "Saleh", year: 12, age: 17),
                    StudentDetails(fullName: "Sulaiman", year: 12, age: 17),
                    StudentDetails(fullName: "Faris", year: 12, age: 18)]
    
    var body: some View {
        ZStack {
            
            Color.gray
                .ignoresSafeArea()
                .opacity(0.3)
            
            VStack {
                
                Text("Student List")
                    .padding()
                    .font(.system(size: 40, weight: .black, design: .monospaced))
                    .foregroundColor(.white)
                
                Spacer()
                
                Image("id")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 140)
                    .opacity(0.4)
                
                
                Spacer()
                
                //
                ScrollView(.vertical) {
                    
                    VStack {
                        
                        
                        ForEach(students) {
                            
                            student in
                            
                            VStack {
                                
                                Text(student.fullName)
                                
                                Text("Age: \(student.age)")
                                
                                Text("Year: \(student.year)")
                                
                                
                            }.padding()
                            .font(.system(size: 20, weight: .semibold, design: .monospaced))
                            
                            
                        }
                        
                    }
                    
                }.frame(width: 370, height: 100)
                .background(Color.blue)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
                .foregroundColor(.white)
                
                Spacer()
                
                let amount = students.count
                
                Text("There are \(amount) students.")
                    .padding()
                Spacer()
                
                
            }
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}

struct StudentDetails: Identifiable {
    
    let id = UUID()
    
    var fullName: String
    var year: Int
    var age: Int
    
}
