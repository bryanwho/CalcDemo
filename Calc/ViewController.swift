//
//  ViewController.swift
//  Calc
//
//  Created by Bryan Okeke on 3/9/16.
//  Copyright © 2016 Beginner Programmers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var userIsTyping: Bool = false
    
    @IBAction func digitPressed(sender: UIButton) {
        let digit = sender.currentTitle!
        print("digit equals \(digit)")
        
        if userIsTyping {
            display.text! += digit
        } else {
            userIsTyping = true
            display.text = digit
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

