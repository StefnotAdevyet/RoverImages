//
//  RoverImagesApp.swift
//  RoverImages
//
//  Created by developer on 8/5/22.
//

import SwiftUI

@main
struct RoverImagesApp: App {
    var network = Network()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(network)
        }
    }
}
