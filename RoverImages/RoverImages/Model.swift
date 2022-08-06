//
//  Model.swift
//  RoverImages
//
//  Created by developer on 8/5/22.
//

import Foundation



struct Feed: Codable {
    var photos: [Photo]
}

struct Photo: Codable {
    var id: Int
    var sol: Int
    var camera: Camera
    var img_src: String
    var earth_date: String
    var rover: Rover
}

struct Camera: Codable {
    var id: Int
    var name: String
    var rover_id: Int
    var full_name: String
}

struct Rover: Codable {
    var id: Int
    var name: String
    var landing_date: String
    var launch_date: String
    var status: String
}



/*{
  "photos": [
 {
   "id": 509233,
   "sol": 1,
   "camera": {},
   "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mcam/0001MR0000001000C0_DXXX.jpg",
   "earth_date": "2012-08-07",
   "rover": {}
 }
 
 {
      "id": 4477,
      "sol": 1,
      "camera": {
        "id": 22,
        "name": "MAST",
        "rover_id": 5,
        "full_name": "Mast Camera"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mcam/0001ML0000001000I1_DXXX.jpg",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active"
      }
    },
   ,*/
