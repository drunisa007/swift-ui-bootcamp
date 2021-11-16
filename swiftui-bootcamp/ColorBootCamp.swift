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
        }
     
}

struct ColorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootCamp()
            
    }
}
