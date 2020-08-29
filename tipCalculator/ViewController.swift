//
//  ViewController.swift
//  tipCalculator
//
//  Created by Shreejal Luitel on 8/27/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmountTextField.text!) ?? 0 //sets value to the text field or it will be 0.
        
        //if the value isn't nil then it is billAmountTextField otherwise if it is then it's 0. The "!" is used because it's an optional where the optional either holds a value for doesn't.
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        //retrieves the possible list of values value from the tipControl and multiplies that with bill.
        let total = bill + tip
        
        tipPercentageLabel.text = String(format: "%.2f", tip)
        
        //overrides the tipPercentageLabel with the floating point rounded to 2 digits.
        totalLabel.text = String(format: "%.2f", total)
        
        //overrides the totalLabel with two decimal points. 
    }
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
}

