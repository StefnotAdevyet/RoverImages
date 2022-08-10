//
//  RoverDetail.swift
//  RoverImages
//
//  Created by developer on 8/6/22.
//

import SwiftUI

struct RoverDetail: View {
    var roverName: String
    var roverPhoto: String
    var launchDate: String
    var landingDate: String
    var status: String
    
    
    
    var body: some View {
        
            VStack {
                //need to ignore top safe area and move the rest of the components up a bit
                Image(roverPhoto)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .shadow(radius: 20)
                    .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 400, alignment: .top)
                    .clipped()
                
                HStack() {
                    Text(launchDate)
                    Spacer()
                    Text(landingDate)
                }
                .padding()
                Text(status)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                Text("Some sort of intro/history of the aforementioned rover")
                Spacer()
                
                
                HStack {
                    NavigationLink(destination: ImageList(camera: "FHAZ", roverName: roverPhoto)) {
                        Text("FHAZ")
                    }
                    
                    NavigationLink(destination: ImageList(camera: "RHAZ", roverName: roverPhoto)) {
                        Text("RHAZ")
                    }
                    
                    NavigationLink(destination: ImageList(camera: "NAVCAM", roverName: roverPhoto)) {
                        Text("NAVCAM")
                    }
                }
            }
            .navigationTitle(roverPhoto)
        }
        
}

struct RoverDetail_Previews: PreviewProvider {
    static var previews: some View {

        RoverDetail(roverName: "Curiosity",roverPhoto: "Curiosity", launchDate: "November 26, 2011", landingDate: "-Present", status: "Active")
    }
}


/*
 Abbrev.   Camera                         Curiosity    Opportunity    Spirit
 FHAZ      Front Hazard Avoidance Camera      ✔             ✔           ✔
 RHAZ      Rear Hazard Avoidance Camera       ✔             ✔           ✔
 MAST      Mast Camera                        ✔
 CHEMCAM   Chemistry and Camera Complex       ✔
 MAHLI     Mars Hand Lens Imager              ✔
 MARDI     Mars Descent Imager                ✔
 NAVCAM    Navigation Camera                  ✔             ✔           ✔
 PANCAM    Panoramic Camera                   ✔             ✔
 MINITES   Miniature Thermal Emission Spectrometer          ✔           ✔
*/
