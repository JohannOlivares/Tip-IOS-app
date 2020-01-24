//
//  ViewController.swift
//  tip
//
//  Created by JOHANN OLIVARES on 1/23/20.
//  Copyright © 2020 JOHANN OLIVARES. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //UIvariables
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    

    @IBAction func calculateTip(_ sender: Any) {
        //Get Bill amount
        let bill = Double(billField.text!) ?? 0
        let tipPercentage = [0.05, 0.1, 0.5]
        
        //Calculate Tip and total
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Labels
        tipLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String(format: "$%.2f", total)
    }
}

