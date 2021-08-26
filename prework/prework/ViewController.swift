//
//  ViewController.swift
//  prework
//
//  Created by Airi Shimamura on 8/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var SliderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //  Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    @IBAction func sliderValChange(_ sender: UISlider) {
        
        let currentValue = Int(sender.value)
        SliderLabel.text = "\(currentValue)"
        
        
        
        let myVal = Double(currentValue)
        let newVal = myVal * 0.01
        
        let bill2 = Double(billAmountTextField.text!) ?? 0
        let tip2 = bill2 * newVal
        let toatl2 = bill2 + tip2
        
        tipAmountLabel.text = String(format: "$%.2f", tip2)
        totalLabel.text = String(format: "$%.2f", toatl2)
        
        
        
    }
    
}

