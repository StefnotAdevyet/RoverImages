//
//  MainView.swift
//  RoverImages
//
//  Created by developer on 8/6/22.
//

import SwiftUI


struct MainView: View {
    @EnvironmentObject var network: Network
    
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

                NavigationLink(destination: RoverDetail(rover: "Curiosity")) {
                    Text("Curiosity")
                }.padding()
                HStack {
                    NavigationLink(destination: RoverDetail(rover: "Spirit")) {
                        Text("Spirit")
                    }
                    Spacer()
                    NavigationLink(destination: RoverDetail(rover: "Opportunity")) {
                        Text("Opportunity")
                    }
                }
                Spacer()
            }
            .navigationTitle("NASA Rovers")
            .padding()
            .onAppear {
                network.getPhotos()
            }
        }
        .navigationViewStyle(.stack)
    }
    
    
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
