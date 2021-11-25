//
//  VGridBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/25/21.
//

import SwiftUI

struct VGridBootCamp: View {
    
    
    var myColumns : [GridItem]  = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView{
        
            LazyVGrid(columns: myColumns,spacing: 20){
                ForEach(1...20, id: \.self){ index in
                    
                    RoundedRectangle(cornerRadius: 5)
                        .frame(height:200)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 2, x: 1, y: 1  )
                }
            }.padding()
        }
    }
}

struct VGridBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        VGridBootCamp()
    }
}
