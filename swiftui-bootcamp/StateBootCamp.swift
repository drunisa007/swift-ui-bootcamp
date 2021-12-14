//
//  StateBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/30/21.
//

import SwiftUI

struct StateBootCamp: View {
    
    @State var backgroundColor : Color = Color.pink
    @State var count : Int = 0;
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
          //content
            TestView(count: $count, backgroundColor: $backgroundColor)
        
        }
    }
    
    
  
}

struct TestView: View {
    
    @Binding var count : Int
    @Binding var backgroundColor: Color
    
    var body: some View {
        VStack( spacing: 20 ){
            Circle()
                .foregroundColor(.white)
                .shadow(color: Color.white, radius: 10, x: 1, y: 1)
                .overlay(alignment: .center){
                    Text("\(count)")
                }
                .frame(width: 50, height: 50)
            
            HStack{
                
                Button(action: {
                    backgroundColor = Color.green
                    count += 1;
                }){
                    Text("Add")
                        .cornerRadius(10)
                        .frame(maxWidth:.infinity,maxHeight:45)
                        .background(.white)
                }
                Button(action: {
                    backgroundColor = Color.black
                    count -= 1;
                }){
                    Text("Minus")
                        .cornerRadius(10)
                        .frame(maxWidth:.infinity,maxHeight:45)
                        .background(.white)
                }
            }.padding()
        }
    }
}

struct StateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootCamp()
    }
}


