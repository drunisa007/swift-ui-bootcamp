//
//  EnvironmentBootCamp.swift
//  swiftui-bootcamp
//
//  Created by Drunisa on 12/13/21.
//

import SwiftUI


struct TreeModel : Identifiable{
    let id : String  = UUID().uuidString
    let name: String
    let count : Int
}


class TreeViewModel : ObservableObject{
    @Published var treeList : [TreeModel] = []
    @Published var showLoading : Bool = false
    
    init(){
        showLoading = true
        getTree()
    }
    
    func getTree(){
        
        DispatchQueue.main.asyncAfter(deadline: .now()+1){
            self.treeList.append(TreeModel(name: "Orange Tree", count: 5))
            self.treeList.append(TreeModel(name: "Blue Tree", count: 1))
            self.treeList.append(TreeModel(name: "Red Tree", count: 3))
            self.treeList.append(TreeModel(name: "Black Tree", count: 10))
            self.treeList.append(TreeModel(name: "White Tree", count: 20))
            self.showLoading = false
        }
    }
    
    func removeTree(indexSet: IndexSet){
        self.treeList.remove(atOffsets: indexSet)
    }
}

struct TreeThirdView : View {
    
    @EnvironmentObject var treeViewModel : TreeViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ScrollView{
            ForEach(treeViewModel.treeList) {treeSingle in
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("\(treeSingle.name)")
                        .foregroundColor(.black)
                        .padding()
                        .padding(.horizontal)
                        .background(.brown)
                        .cornerRadius(40)
                })
                
            }
        }
    }
}


struct TreeSecondView : View {
    
    var treeSingleList : TreeModel
    
    @EnvironmentObject var treeViewModel : TreeViewModel
    
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            VStack{
                
                
                NavigationLink(destination: TreeThirdView(), label: {
                    Text(treeSingleList.name)
                        .foregroundColor(.black)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(30)
                })
                
                
            
            }
        }
    }
}


struct EnvironmentBootCamp: View {
    
    @StateObject var treeViewModel: TreeViewModel  = TreeViewModel()
    
    var body: some View {
        NavigationView{
            
            GeometryReader{ g in
                    if treeViewModel.showLoading {
                        HStack{
                            ProgressView()
                        }
                 
                    }
                    else {
                        List{
                            ForEach(treeViewModel.treeList) { tree in
                                
                                NavigationLink(destination: TreeSecondView(treeSingleList: tree), label: {
                                    HStack{
                                        Circle()
                                            .foregroundColor(Color.orange)
                                            .frame(width: 40, height: 30)
                                            .overlay(alignment: .center){
                                                Text("\(tree.count)")
                                            }
                                        
                                        Text(tree.name)
                                            .font(.title2)
                                            
                                    }
                                })
                            }
                            .onDelete(perform: treeViewModel.removeTree)
                        }
                    
                    }
                
                
            }
            .navigationTitle("Tree List")
            .navigationBarTitleDisplayMode(.inline)
        }
        .environmentObject(treeViewModel)

    }
}

struct EnvironmentBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentBootCamp()
        //TreeThirdView()
        //TreeSecondView(treeListIndex: 1)
    }
}
