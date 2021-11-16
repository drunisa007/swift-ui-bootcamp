//
//  ImageBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/16/21.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        
        ZStack{
            Circle()
                .stroke(.red, lineWidth: 6)
                .frame(width: 220, height: 220)
            Image("therock")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
        }
        

           
    }
}

struct ImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootCamp()
    }
}
