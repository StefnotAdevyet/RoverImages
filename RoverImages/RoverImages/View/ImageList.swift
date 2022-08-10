//
//  RoverList.swift
//  RoverImages
//
//  Created by developer on 8/6/22.
//

import SwiftUI

struct ImageList: View {
    @EnvironmentObject var network: Network
    var camera: String?
    var roverName: String?
    
    var body: some View {
        let roverUrl: String = "https://api.nasa.gov/mars-photos/api/v1/rovers/\(roverName!)/photos?sol=100&camera=\(camera!)&api_key=DnLuowFcN9OcxQowIRhuATo1MtasRciSQdXJnOkP"
        ScrollView {
            ForEach(network.photos) { photo in
                ImageRow(photo: photo)
            }
        }
        .padding()
        .onAppear {
            network.getPhotos(urlStr: roverUrl)
        }
    }
}


struct ImageList_Previews: PreviewProvider {
    static var previews: some View {
        ImageList()
    }
}
