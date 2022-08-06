//
//  ContentView.swift
//  RoverImages
//
//  Created by developer on 8/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image("rover")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 6)
                }
                .shadow(radius: 10)
            Text("Opportunity")
            Text("Spirit")
            Spacer()
        }
        .padding()
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
