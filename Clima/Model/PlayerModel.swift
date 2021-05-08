//
//  WeatherModel.swift
//  Clima
//
//  Created by Angela Yu on 03/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct PlayerModel {
    let team: String
    let firstN: String
    let lastN: String
    let years: String
    let college: String
    let place: String
    let DOB: String
    let start: String
    let height: String
    let weight: String
    
//    var temperatureString: String {
//        return String(format: "%.1f", temperature)
//    }
    
    var teamName: String {
        switch team {
        case "1":
            return "hawks"
        case "2":
            return "celtics"
        case "4":
            return "nets"
        case "5":
            return "hornets"
        case "6":
            return "bulls"
        case "7":
            return "cavaliers"
        case "8":
            return "mavericks"
        case "9":
            return "nuggets"
        case "10":
            return "pistons"
        case "11":
            return "warriors"
        case "14":
            return "rockets"
        case "15":
            return "pacers"
        case "16":
            return "clippers"
        case "17":
            return "lakers"
        case "19":
            return "grizzlies"
        case "20":
            return "heat"
        case "21":
            return "bucks"
        case "22":
            return "timberwolves"
        case "23":
            return "pelicans"
        case "24":
            return "knicks"
        case "25":
            return "thunder"
        case "26":
            return "magic"
        case "27":
            return "76ers"
        case "28":
            return "suns"
        case "29":
            return "trailblazers"
        case "30":
            return "kings"
        case "31":
            return "spurs"
        case "38":
            return "raptors"
        case "40":
            return "jazz"
        case "41":
            return "wizards"
        default:
            return "cloud"
        }
    }
}
    

