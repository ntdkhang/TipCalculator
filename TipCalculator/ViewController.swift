//
//  ViewController.swift
//  TipCalculator
//
//  Created by Nguyen Tran Duy Khang on 11/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLable: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func billAmountChanged(_ sender: Any) {
        calculateTip()
    }
    
    @IBAction func tipPercentageChanged(_ sender: Any) {
        calculateTip()
    }
    
    private func calculateTip() {
        let bill = Double(billAmountTextField.text ?? "0") ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLable.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
}

