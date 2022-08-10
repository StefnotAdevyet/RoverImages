//
//  MainView.swift
//  RoverImages
//
//  Created by developer on 8/6/22.
//

import SwiftUI


struct MainView: View {
    @EnvironmentObject var network: Network
    var currentTime = Date().displayFormat
    
    var body: some View {
        let mainImage = network.mainPhoto?.img_src ?? "image not available"

        NavigationView {
            VStack {
                AsyncImage(url: URL(string: mainImage)) { image in
                    image.resizable()
                } placeholder: {
                    Text("image loading")
                }
                .frame(width: 300, height: 300)

                NavigationLink(destination: RoverDetail(roverName: "Curiosity",roverPhoto: "Curiosity", launchDate: "November 26, 2011", landingDate: "-Present", status: "Active")) {
                    Text("Curiosity")
                }.padding()
                HStack {
                    NavigationLink(destination: RoverDetail(roverName: "Spirit", roverPhoto: "Spirit", launchDate: "June 10, 2003", landingDate: "May 25, 2011", status: "Inactive")) {
                        Text("Spirit")
                    }
                    Spacer()
                    NavigationLink(destination: RoverDetail(roverName: "Opportunity", roverPhoto: "Opportunity", launchDate: "July 8, 2003", landingDate: "February 13, 2019", status: "Inactive")) {
                        Text("Opportunity")
                    }
                }
                Spacer()
                Text(currentTime)
                    .font(.footnote)
            }
            .navigationTitle("NASA Rovers")
            .padding()
            .onAppear {
                //network.getPhotos()
            }
        }
        .navigationViewStyle(.stack)
    }
    
    
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Network())
    }
}

extension Date {
    var displayFormat: String {
        self.formatted(
            .dateTime
                .month(.defaultDigits)
                .day(.defaultDigits)
                .year(.twoDigits)
        )
        .replacingOccurrences(of: "/", with: "-")
    }
}
