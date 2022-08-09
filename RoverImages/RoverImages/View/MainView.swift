//
//  MainView.swift
//  RoverImages
//
//  Created by developer on 8/6/22.
//

import SwiftUI


struct MainView: View {
    @EnvironmentObject var network: Network
    
   
    
    var curiosity = Rover(id: 1, name: "Curiosity", landing_date: "02/27/1991", launch_date: "TBD", status: "Active")
    
    var spirit = Rover(id: 2, name: "Spirit", landing_date: "02/27/1991", launch_date: "TBD", status: "Inactive")
    
    var opportunity = Rover(id: 3, name: "Opportunity", landing_date: "02/27/1991", launch_date: "TBD", status: "Inactive")
    
    var body: some View {
        NavigationView {
            VStack {
                Image("earth")
                    .resizable()
                    .frame(width:300, height: 300)
                NavigationLink(destination: RoverDetail(rover: curiosity)) {
                    Text(network.mainPhoto?.img_src ?? "image not available")
                }.padding()
                    .onAppear {
                        network.getPhotos()
                        
                    }
                
                HStack {
                    NavigationLink(destination: RoverDetail(rover: spirit)) {
                        Text(spirit.name)
                    }
                    Spacer()
                    NavigationLink(destination: RoverDetail(rover: opportunity)) {
                        Text(opportunity.name)
                    }
                }
                Spacer()
            }
            .navigationTitle("NASA Rovers")
            .padding()
        }
    }
    
    
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
