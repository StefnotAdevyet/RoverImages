//
//  MainView.swift
//  RoverImages
//
//  Created by developer on 8/6/22.
//

import SwiftUI


struct MainView: View {
    
    var curiosity = Rover(id: 1, name: "Curiosity", landing_date: "02/27/1991", launch_date: "TBD", status: "Active")
    
    var spirit = Rover(id: 2, name: "Spirit", landing_date: "02/27/1991", launch_date: "TBD", status: "Inactive")
    
    var opportunity = Rover(id: 3, name: "Opportunity", landing_date: "02/27/1991", launch_date: "TBD", status: "Inactive")
    
    var body: some View {
        NavigationView {
            HStack {
            NavigationLink(destination: RoverDetail(rover: curiosity)) {
                Text(curiosity.name)
            }
            Spacer()
            NavigationLink(destination: RoverDetail(rover: spirit)) {
                Text(spirit.name)
            }
            Spacer()
            NavigationLink(destination: RoverDetail(rover: opportunity)) {
                Text(opportunity.name)
            }
            }
            .padding()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
