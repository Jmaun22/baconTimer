//
//  ViewController.swift
//  baconTimer
//
//  Created by Jesse Maun on 3/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    let bacontimes = ["light": 180, "medium": 240, "dark": 300]
    
    var secondsRemaining = 60
    
    
    var timer = Timer()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func light(_ sender: UIButton) {
        
        timer.invalidate()
        
        
       
            
        let doneness = sender.currentTitle!
        

        
        secondsRemaining = bacontimes[doneness]!

        timer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
        
    }
    

    
    @objc func updateTimer() {

        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds.")
            secondsRemaining -= 1
        }

}

}
