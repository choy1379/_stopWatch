//
//  ViewController.swift
//  StopWatch
//
//  Created by 최진영 on 2020/03/15.
//  Copyright © 2020 최진영. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelMilieSecond: UILabel!
    @IBOutlet weak var labelSecond: UILabel!
    @IBOutlet weak var labelMinute: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var ResetButton: UIButton!
    
    var isStarting = false
    
    var timer = Timer()
    var startTime = 0.0
    var elapsed = 0.0
    
    @IBAction func StartStop(_ sender: Any) {
        if isStarting {
            elapsed = Date().timeIntervalSince1970 - startTime
            startButton.setTitle("Start", for: .normal)
            timer.invalidate()
        }
        else{
            // Timer
            
            startTime = Date().timeIntervalSince1970 - elapsed
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(UpdateCounter), userInfo: nil, repeats: true)
            
             startButton.setTitle("Stop", for: .normal)
        }
        
        print("start \(startTime)")
        print("start \(elapsed)")
        isStarting = !isStarting;
    }
    
    @IBAction func Reset(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
        
        //Button
        startButton.setTitle("Start", for: .normal)
        ResetButton.setTitle("Reset", for: .normal)
        
        //Label
        labelMinute.text = "00"
        labelSecond.text = "00"
        labelMilieSecond.text = "00"
    }
    
    @objc func UpdateCounter(){
        
    }


}

