//
//  ViewController.swift
//  coldcall
//
//  Created by Quang Nguyen on 9/4/18.
//  Copyright © 2018 Quang Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var coloredNumberLabel: UILabel!
  @IBOutlet weak var nameLabel: UILabel!
  @IBAction func coldCallButtonPressed(_ sender: UIButton) {
    updateUI()
  }
  
  // Returns a random value from an array of names
  func randomName(from nameList: [String]) -> String {
    let randomIndex =  randomNumberExclusive(from: 0, to: nameList.count)
    return nameList[randomIndex]
  }
  
  // Returns a random number x where botRange <= x <= topRange
  func randomNumberExclusive(from botRange: Int, to topRange: Int) -> Int {
    return Int(arc4random_uniform(UInt32(topRange - botRange))) + botRange
  }
  
  // Return the text color that correponds to a given integer
  func correspondingColorToInt(_ number: Int) -> UIColor {
    switch number {
    case 0...2:
      return UIColor.red
    case 3...4:
      return UIColor.orange
    default:
      return UIColor.green
    }
  
  }
  
  let names  = ["Jimmy", "Cody", "Ryota", "Bryant"]

  override func viewDidLoad() {
    super.viewDidLoad()
    coloredNumberLabel.isHidden = true
    updateUI()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  func updateUI() -> () {
    let randomNumber = randomNumberExclusive(from: 1, to: 6)

    nameLabel.text = randomName(from: names)
    coloredNumberLabel.isHidden = false
    coloredNumberLabel.text = "\(randomNumber)"
    coloredNumberLabel.textColor = correspondingColorToInt(randomNumber)
    
  }

}

