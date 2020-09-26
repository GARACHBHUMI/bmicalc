//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by ravi on 04/09/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiVal:String?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiVal
     
    }
    
    @IBAction func reCalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
