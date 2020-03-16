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
    
    @IBAction func StartStop(_ sender: Any) {
        
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


}

