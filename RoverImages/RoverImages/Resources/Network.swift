//
//  Network.swift
//  RoverImages
//
//  Created by developer on 8/5/22.
//

import Foundation

let apiKey = "DnLuowFcN9OcxQowIRhuATo1MtasRciSQdXJnOkP"




class Network: ObservableObject {
    @Published var photos: [Photo] = []
    
    @Published var mainPhoto: Photo?
    
    func getPhotos(urlStr: String) {
        
        guard let url = URL(string: urlStr) else {
            print("url error")
            return
        }
        
        
        let urlRequest = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let error = error {
                print("request error: \(error)")
            }
            guard let response = response as? HTTPURLResponse else { return }
            if response.statusCode == 200 {
                guard let data = data else { return }
                DispatchQueue.main.async {
                    do {
                        let decodedJSON = try JSONDecoder().decode(Feed.self, from: data)
                        self.photos = decodedJSON.photos
                        self.mainPhoto = self.photos.first
                    } catch let error  {
                        print(error)
                    }
                }
            }
        }
        dataTask.resume()
    }
    
    
    
}
