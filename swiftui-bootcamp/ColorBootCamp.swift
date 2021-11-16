//
//  ColorBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/16/21.
//

import SwiftUI

struct ColorBootCamp: View {
    var body: some View {
        
        ZStack{
            Circle()
                 .fill(
                    Color(uiColor: UIColor.secondarySystemBackground)
                 )
                 .frame(width: 100, height: 100,alignment: .center)
            Text("1")
                .foregroundColor(Color.black)
                .font(.system(size: 30, weight: .semibold, design: .monospaced))
         }
        
//        Button(action: {
//            print("this is great")
//        }, label: {
//            Text("Click me")
//                .foregroundColor(.white)
//        })
//        .frame(width: 200, height: 50, alignment: .center)
//        .background(Color.blue)
//        .cornerRadius(20)
//        .shadow(color: .blue.opacity(0.6), radius: 10, x: 0, y: 2)
        
       
        
        }
     
}

struct ColorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootCamp()
            
    }
}
