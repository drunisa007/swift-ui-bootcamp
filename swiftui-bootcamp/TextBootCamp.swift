//
//  TextBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/15/21.
//

import SwiftUI


struct TextBootCamp : View {
    var body : some View {
        Text("Hello world from Drunisa, I am Mobile Developer With Over 4 years experience".capitalized)
//            .font(.headline)
//            .underline(true, color: Color.red)
//            .strikethrough(true,color: Color.gray)
            .font(.system(size: 20, weight: .semibold, design: .default))
            .frame(width: 200, height: 200, alignment: .center)
            .multilineTextAlignment(.trailing)
            .foregroundColor(Color.white)
            .background(.green)
//            .kerning(5)
//            .lineSpacing(20)
            
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
