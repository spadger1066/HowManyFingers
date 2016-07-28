//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Stephen on 28/07/2016.
//  Copyright © 2016 luminator.technology.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var guess: UITextField!
    
    @IBAction func guessClick(_ sender: AnyObject) {
        let actualNumber = arc4random_uniform(6)
        let guessedNumber: UInt32 = UInt32(guess.text!)!
        
        if guessedNumber == actualNumber {
            answer.text = "Correct!"
        } else {
            answer.text = "Wrong! It was \(actualNumber)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

