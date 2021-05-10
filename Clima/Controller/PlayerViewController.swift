//
//  PlayerViewController.swift
//  Clima
//
//  Created by Ojurere Shonekan on 5/7/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {
    @IBOutlet weak var teamIdImageView: UIImageView!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var yearsProLabel: UILabel!
    @IBOutlet weak var collegeNameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var startNbaLabel: UILabel!
    @IBOutlet weak var heightInMetersLabel: UILabel!
    @IBOutlet weak var weightInKilogramsLabel: UILabel!
    var results: PlayerModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayResult()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        print("I do something!")
    }
    
    
    func displayResult() {
        teamIdImageView.image = UIImage(imageLiteralResourceName: results.teamName)
        lastNameLabel.text = results.lastN
        firstNameLabel.text = results.firstN
        yearsProLabel.text = results.years
        collegeNameLabel.text = results.college
        countryLabel.text = results.place
        dateOfBirthLabel.text = results.DOB
        startNbaLabel.text = results.start
        heightInMetersLabel.text = results.height
        weightInKilogramsLabel.text = results.weight
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


