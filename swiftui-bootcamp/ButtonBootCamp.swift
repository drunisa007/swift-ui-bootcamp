//
//  ButtonBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/25/21.
//

import SwiftUI

struct ButtonBootCamp: View {
    
    @State var btnName : String = "Very Good";
    
    var body: some View {
        VStack(spacing:30){
            Text("\(btnName)")
            Button("First Button"){
                self.btnName = "Button One"
            }
            
            Button(action: {
                self.btnName = "Button Two"
            }){
                Text("hello world")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(.purple)
                    .cornerRadius(5)
            }
            
            Button(action:{
                self.btnName = "Button Three"
            }){
                Circle()
                    .fill(.white)
                    .overlay(alignment: .center){
                        Image(systemName: "heart")
                            .font(.largeTitle)
                            .foregroundColor(.purple)
                    }
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.gray.opacity(0.5), radius: 4, x: -2, y: 2)
                    
            }
            
            Button(action:{
                self.btnName = "Button Four"
            }){
                Text("Button 4")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .padding()
                    .padding()
                    .padding()
                    .padding()
                    .background(
                        Capsule()
                            .fill(.purple)
                   )
            }
        }
    }
}

struct ButtonBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootCamp()
    }
}
