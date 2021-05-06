//
//  WeatherData.swift
//  Clima
//
//  Created by Angela Yu on 03/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let api: Api

//    let main: Main
}

struct Api: Codable {
    let status: Int
    let players: [Players]
}

struct Players: Codable {
    let firstName: String
    let lastName: String
//    let teamId: String
    let yearsPro: String
    let collegeName: String
    let country: String
    let dateOfBirth: String
    let startNba: String
    let heightInMeters: String
    let weightInKilograms: String
   // let id: Int
}
