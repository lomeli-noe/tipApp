//
//  ViewController.swift
//  tipApp
//
//  Created by Noé Lomelí on 1/22/18.
//  Copyright © 2018 Noé Lomelí. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        // Array to hold the different percentage values
        let tipPercentages = [0.18, 0.2, 0.25]
        
        // If the user enters an invalid input like "ABC" the value will be set to 0
        let bill = Double(billField.text!) ?? 0
        
        // Multiply the bill value times the percentage amount selected by the user
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Display the amount with two decimals
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

