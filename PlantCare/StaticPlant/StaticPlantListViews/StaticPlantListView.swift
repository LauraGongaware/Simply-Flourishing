//
//  StaticPlantListSwift.swift
//  PlantCare
//
//  Created by Laura Gongaware on 7/12/22.
//

import SwiftUI

struct StaticPlantListView: View {
    
   @ObservedObject var viewModel = MyCollectionViewModel()
    
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color("bg").edgesIgnoringSafeArea(.all)
                    List{
                        ForEach(PlantController.shared.staticPlantList) { staticPlant in
                            NavigationLink {
                                StaticPlantDetailView(staticPlantList: staticPlant)
                            } label : {
                                    Text(staticPlant.plantName)
                                .navigationTitle(Text("Available Plants List"))
                                .navigationBarTitle("Plants", displayMode: .inline)
                            }
                        }
                    }.cornerRadius(12)
                    .padding()
                   
        
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct StaticPlantListSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        StaticPlantListView()
    }
}
