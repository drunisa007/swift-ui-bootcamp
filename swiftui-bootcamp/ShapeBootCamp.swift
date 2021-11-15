//
//  ShapeBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/15/21.
//

import SwiftUI

struct ShapeBootCamp: View {
    var body: some View {
//       Circle()
//            .stroke(.green, lineWidth: 2)
//            .frame(width: 150, height: 150)
        
        Circle()
            .stroke(.green, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
            .frame(width: 200, height: 200)
//        Capsule(style: .continuous)
//            .frame(width: 200, height: 50)
        
        
//        RoundedRectangle(cornerRadius: 20)
//            .trim(from: 0.5, to: 2)
//            .frame(width: 150, height: 150)
    }
}

struct ShapeBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBootCamp()
    }
}
