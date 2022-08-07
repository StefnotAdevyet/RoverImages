//
//  RoverDetail.swift
//  RoverImages
//
//  Created by developer on 8/6/22.
//

import SwiftUI

struct RoverDetail: View {
    var body: some View {
        VStack {
            //need to ignore top safe area and move the rest of the components up a bit
            Image("rover")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .shadow(radius: 20)
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 450, alignment: .top)
                .edgesIgnoringSafeArea(.top)
                .clipped()
            Text("Rover Name")
                .font(.headline)
            HStack() {
                Text("date launched")
                Spacer()
                Text("date inactive")
            }
            .padding()
            Text("description")
            Spacer()
            HStack {
                Button("Camera 1") {
                            print("camera 1 gallery")
                }
                Button("Camera 2") {
                            print("camera 2 gallery")
                }
                Button("Camera 3") {
                            print("camera 3 gallery")
                }
                Button("Camera 4") {
                            print("camera 4 gallery")
                }
            }
        }
        
    }
}

struct RoverDetail_Previews: PreviewProvider {
    static var previews: some View {
        RoverDetail()
    }
}
