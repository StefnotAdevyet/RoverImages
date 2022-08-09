//
//  RoverDetail.swift
//  RoverImages
//
//  Created by developer on 8/6/22.
//

import SwiftUI

struct RoverDetail: View {
    var rover: Rover
    
    var body: some View {
            VStack {
                //need to ignore top safe area and move the rest of the components up a bit
                Image("rover")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .shadow(radius: 20)
                    .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 400, alignment: .top)
                    .clipped()
                HStack() {
                    Text(rover.landing_date)
                    Spacer()
                    Text(rover.launch_date)
                }
                .padding()
                Text(rover.status)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                Spacer()
                
                
                HStack {
                    NavigationLink(destination: ImageList(camera: "FHAZ")) {
                        Text("FHAZ")
                    }
                    
                    NavigationLink(destination: ImageList(camera: "RHAZ")) {
                        Text("RHAZ")
                    }
                }
            }
            .navigationTitle(rover.name)
        }
        
}

struct RoverDetail_Previews: PreviewProvider {
    static var previews: some View {
        let curiosity = Rover(id: 1, name: "Curiosity", landing_date: "02/27/1991", launch_date: "TBD", status: "Active")

        RoverDetail(rover: curiosity)
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
