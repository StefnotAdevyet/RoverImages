//
//  ContentView.swift
//  RoverImages
//
//  Created by developer on 8/5/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var network: Network
    
    var body: some View {
        MainView()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Network())
    }
}
