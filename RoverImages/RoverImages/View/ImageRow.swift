//
//  RoverRow.swift
//  RoverImages
//
//  Created by developer on 8/6/22.
//

import SwiftUI

struct ImageRow: View {
    var photo: Photo?
    var body: some View {
        
        HStack {
            Text(photo?.rover.name ?? "null")
            Spacer()
            Text(photo?.camera.name ?? "null")
            Spacer()
            Text(photo?.earth_date ?? "null")
        }
    }
}

struct ImageRow_Previews: PreviewProvider {
    static var previews: some View {
        ImageRow()
    }
}
