//
//  SwiftStateObjectBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 12/13/21.
//

import SwiftUI


struct Fruit : Identifiable {
    let id : String = UUID().uuidString
    let name : String
    let count : Int
}


class FruitViewModel : ObservableObject {
    
    
   @Published var fruits : [Fruit]  = []
   @Published var loading : Bool = false
    
    init(){
        getFruits()
    }
    
    func deleteFruit(index: IndexSet){
        fruits.remove(atOffsets: index)
    }
    
    func getFruits(){
        
        loading  = true
        let fruitOne : Fruit = Fruit(name: "Orange", count: 5)
        let fruitTwo : Fruit = Fruit(name: "Bread", count: 9)
        let fruitThree : Fruit = Fruit(name: "StrawBerry", count: 10)
        
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            self.fruits.append(fruitOne)
            self.fruits.append(fruitTwo)
            self.fruits.append(fruitThree)
            self.loading = false
        }
        
//        DispatchQueue.main.asyncAfter(deadline: .now()){
//            self.fruits.append(fruitOne)
//            self.fruits.append(fruitTwo)
//            self.fruits.append(fruitThree)
//            self.loading = false
//        }
//
    }
    
}

struct SwiftStateObjectBootCamp: View {
    
    @StateObject var fruitModel : FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView{
            List{
                
                if fruitModel.loading {
                   ProgressView()
                }
                else{
                    ForEach(fruitModel.fruits) {  fruit in
                        Text(fruit.name)
                    }
                    .onDelete(perform: fruitModel.deleteFruit)
                }
        
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruits List")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading:
                                    NavigationLink(destination: MySecondScreen(fruitList: fruitModel), label: {
                Image(systemName: "gear")
            })
            )
            
        }
    }
}


struct MySecondScreen : View {
    
    
    @Environment(\.presentationMode) var presentationMode
    
    @ObservedObject var fruitList : FruitViewModel
        
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            
            VStack{
                
                ForEach(fruitList.fruits) { fruit in
                    
                    HStack{
                        
                        Circle()
                            .frame(width: 100, height: 100, alignment: .center)
                            .overlay(alignment: .center){
                                Text("\(fruit.count)")
                                    .foregroundColor(.white)
                            }
                    }
                }
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Go Back")
                        .font(.title2)
                        .bold()
                        .padding()
                        .padding(.horizontal,20)
                        .foregroundColor(Color.white)
                        .background(.black)
                        .cornerRadius(20)
                })
            }
        }
    }
}

struct SwiftStateObjectBootCamp_Previews: PreviewProvider {
    static var previews: some View {
    SwiftStateObjectBootCamp()
        //MySecondScreen()
    }
}
