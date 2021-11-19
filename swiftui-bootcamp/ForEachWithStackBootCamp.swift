//
//  ForEachWithStackBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 11/19/21.
//

import SwiftUI

struct ForEachWithStackBootCamp: View {
    
    var data : [String]  = ["hello","hi","bye","good"]

    var body: some View {
      
        ScrollView(.vertical, showsIndicators: false){
            
            LazyVStack(alignment: .leading){
                
                ForEach(1...10,id: \.self){ index in
                    
                    ScrollView(.horizontal){
                        LazyHStack{
                            ForEach(1...10,id:\.self){ index in
                                Rectangle()
                                    .fill(.orange)
                                    .frame(width: 200, height: 200)
                            }
                        }
                    }
                 
                 
                
                }
            }
        }.ignoresSafeArea()
        
    }
}

struct ForEachWithStackBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachWithStackBootCamp()
    }
}
