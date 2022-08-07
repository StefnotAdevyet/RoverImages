//
//  RoverList.swift
//  RoverImages
//
//  Created by developer on 8/6/22.
//

import SwiftUI

struct ImageList: View {
    var camera: String = "camera not available"
    var body: some View {
            List {
                ImageRow()
            }.navigationTitle(camera)
    }
    }


struct ImageList_Previews: PreviewProvider {
    static var previews: some View {
        ImageList()
    }
}
