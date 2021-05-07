//
//  WeatherManager.swift
//  Clima
//
//  Created by Angela Yu on 03/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation
import CoreLocation

protocol PlayerManagerDelegate {
    func didUpdatePlayer(_ playerManager: PlayerManager, player: PlayerModel)
    func didFailWithError(error: Error)
}

struct PlayerManager {
    let playerURL = "https://api-nba-v1.p.rapidapi.com/players/lastName/"
    
    var delegate: PlayerManagerDelegate?
    
    func fetchWeather(lastName: String) {
        let urlString = "\(playerURL)\(lastName)"
        performRequest(with: urlString)
    }
    
    func fetchWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        let urlString = "\(playerURL)&lat=\(latitude)&lon=\(longitude)"
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String) {
        let headers = [
            "x-rapidapi-key": "b37dc01042msh077b336df5f828ep1cd273jsn55c08db6651b",
            "x-rapidapi-host": "api-nba-v1.p.rapidapi.com"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: urlString)! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: request as URLRequest) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data {
                    if let player = self.parseJSON(safeData) {
                        self.delegate?.didUpdatePlayer(self, player: player)
                    }
                }
                let httpResponse = response as? HTTPURLResponse
                let string = String(data: data!, encoding: .utf8)
                print(string)
            }
            
            task.resume()
        }
    }
    
    func parseJSON(_ weatherData: Data) -> (PlayerModel?) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
//            let id = decodedData.weather[0].id
//            let temp = decodedData.main.temp
            let teamId = decodedData.api.players[0].teamId
            let firstName = decodedData.api.players[0].firstName
            let lastName = decodedData.api.players[0].lastName
        
            let player = PlayerModel(team: teamId!, firstN: firstName, lastN: lastName)
            
            print(player.firstN)
            
            
            
//              print(decodedData.api.status)
//              print(decodedData.api.players[0].firstName)
//              print(decodedData.api.players[0].lastName)
//              print(decodedData.api.players[0].teamId)
//              print(decodedData.api.players[0].yearsPro)
//              print(decodedData.api.players[0].collegeName)
//              print(decodedData.api.players[0].country)
//              print(decodedData.api.players[0].dateOfBirth)
//              print(decodedData.api.players[0].startNba)
//              print(decodedData.api.players[0].heightInMeters)
//              print(decodedData.api.players[0].weightInKilograms)
            
            return nil
            
        } catch {
            print(error)
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
    
    
    
}


