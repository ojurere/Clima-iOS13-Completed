//
//  PlayerViewController.swift
//  Clima
//
//  Created by Ojurere Shonekan on 5/7/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    var results: PlayerModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayResult()

        // Do any additional setup after loading the view.
    }


    func displayResult() {
        lastNameLabel.text = results.lastN
        firstNameLabel.text = results.firstN
    }
}
    
//    //MARK: - WeatherManagerDelegate
//
//
//    extension PlayerViewController: PlayerManagerDelegate {
//
//        func didUpdatePlayer(_ playerManager: PlayerManager, player: PlayerModel) {
//            DispatchQueue.main.async {
//    //            self.temperatureLabel.text = weather.temperatureString
//           //     self.conditionImageView.image = UIImage(systemName: player.teamName)
//               // self.cityLabel.text = player.firstN
//                self.lastNameLabel.text = player.firstN
//            }
//        }
//
//        func didFailWithError(error: Error) {
//            print(error)
//        }
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


