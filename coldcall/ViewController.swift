//
//  ViewController.swift
//  coldcall
//
//  Created by Quang Nguyen on 9/4/18.
//  Copyright © 2018 Quang Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  let names  = ["Jimmy", "Cody", "Ryota", "Bryant"]
  
  @IBOutlet weak var nameLabel: UILabel!
  @IBAction func coldCallButtonPressed(_ sender: UIButton) {
    updateUI()
  }
  
  func randomName(from nameList: [String]) -> String {
    let randomIndex =  Int(arc4random_uniform(UInt32(nameList.count)))
    return nameList[randomIndex]
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
    // Do any additional setup after loading the view, typically from a nib.
  }
  func updateUI() -> () {
    nameLabel.text = randomName(from: names)
  }

}

