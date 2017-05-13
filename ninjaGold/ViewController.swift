//
//  ViewController.swift
//  ninjaGold
//
//  Created by Marvin Alganes on 5/11/17.
//  Copyright © 2017 Marvin Alganes. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var goldLabel: UILabel!
    @IBOutlet weak var farmLabel: UILabel!
    @IBOutlet weak var caveLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    @IBOutlet weak var casinoLabel: UILabel!
    
    
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        print("button is pressed at tag \(sender.tag)")
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("button is pressed at tag \(sender.tag)")
        
        
        var money = 0
        var counter = 0
        
        if sender.tag == 1{
            money += Int(arc4random_uniform(11) + 10)  //10 to 20
            counter += money
            farmLabel.isHidden = false
            caveLabel.isHidden = true
            houseLabel.isHidden = true
            casinoLabel.isHidden = true
            farmLabel.text = "You have earned \(money)"
            goldLabel.text = "Gold: \(counter)"


        }
        
        if sender.tag == 2{
            money += Int(arc4random_uniform(6) + 5)  // 5 to 10
            counter += money
            caveLabel.isHidden = false
            houseLabel.isHidden = true
            casinoLabel.isHidden = true
            farmLabel.isHidden = true
            caveLabel.text = "You have earned \(money)"
            goldLabel.text = "Gold: \(counter)"
        
        }
        
        if sender.tag == 3{
            money += Int(arc4random_uniform(4) + 2)  // 2 to 5
            counter += money
            houseLabel.isHidden = false
            farmLabel.isHidden = true
            caveLabel.isHidden = true
            casinoLabel.isHidden = true
            houseLabel.text = "You have earned \(money)"
            goldLabel.text = "Gold: \(counter)"
        }
        
        
        if sender.tag == 4 {
            
            let lose_or_win = Int(arc4random_uniform(2))
            
            if lose_or_win == 1{
                money += Int(arc4random_uniform(51))
                counter += money
                casinoLabel.text = "You have earned \(money)"
                goldLabel.text = "Gold: \(counter)"
            } else {
                money -= Int(arc4random_uniform(51))
                counter -= money
                casinoLabel.text = "You have lost \(money)"
                goldLabel.text = "Gold: \(counter)"
            }
            casinoLabel.isHidden = false
            farmLabel.isHidden = true
            caveLabel.isHidden = true
            houseLabel.isHidden = true
        }
        
        
        if sender.tag == 5{
            farmLabel.isHidden = true
            caveLabel.isHidden = true
            houseLabel.isHidden = true
            casinoLabel.isHidden = true
            goldLabel.text = "No Golds"
        }
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        farmLabel.isHidden = true
        caveLabel.isHidden = true
        houseLabel.isHidden = true
        casinoLabel.isHidden = true
        goldLabel.text = "No Golds"
    }



    
    
    
}

