//
//  RoverList.swift
//  RoverImages
//
//  Created by developer on 8/6/22.
//

import SwiftUI

struct ImageList: View {
    @EnvironmentObject var network: Network
    var camera: String = "camera not available"
    var body: some View {
        ScrollView {
            ForEach(network.photos) { photo in
                ImageRow(photo: photo)
            }
        }
        .padding()
        .onAppear {
            network.getPhotos()
            print(network.photos.count)
        }
    }
}


struct ImageList_Previews: PreviewProvider {
    static var previews: some View {
        ImageList()
    }
}
