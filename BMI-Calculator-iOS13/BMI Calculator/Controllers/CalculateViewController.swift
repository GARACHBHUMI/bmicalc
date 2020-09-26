//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var bmiValue:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
       
        print(String(format: "%.2f",sender.value))
        let height = String(format: "%.2f",sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        print(Int(sender.value))
        weightLabel.text = String(Int(sender.value)) + "Kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
       let height = heightSlider.value
       let weight = weightSlider.value
        
        let bmi = weight / pow(height,2)
        bmiValue = String(format:"%.2f",bmi)
        
    
//        let secondVC = SecondViewController()
//        secondVC.bmival = String(format: "%.2f", bmi)
//        self.present(secondVC, animated: true, completion: nil)
        
        self.performSegue(withIdentifier:  "goToResult",
            sender: self)
            
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiVal = bmiValue
        }
        
    }
}

