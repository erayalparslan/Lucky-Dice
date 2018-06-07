//
//  ViewController.swift
//  LuckyDice
//
//  Created by ruroot on 6/7/18.
//  Copyright © 2018 Eray Alparslan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceIndex1: Int = 0
    var diceIndex2: Int = 0
    let diceArray = ["dice1", "dice2", "dice3", "dice4",
                     "dice5" , "dice6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        roll()
    }

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        roll()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        roll()
    }
    
    func roll(){
        diceIndex1 = Int(arc4random_uniform(6))
        diceIndex2 = Int(arc4random_uniform(6))
        diceImageView1.image = UIImage(named: diceArray[diceIndex1])
        diceImageView2.image = UIImage(named: diceArray[diceIndex2])
    }

}

