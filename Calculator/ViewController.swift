//
//  ViewController.swift
//  Calculator
//
//  Created by Russell Gordon on 4/30/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // this is the connection to the view
    @IBOutlet weak var LabelDiplay: UILabel!
    
    // create an instance (object of the calculator class
    var model = Calculator ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Clear contents of label
        LabelDiplay.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onepressed(_ sender: Any) {
        model.addToNewValue(digit: "1")
        LabelDiplay.text = model.providedValue
    }
    
    @IBAction func twopressed(_ sender: Any) {
        model.addToNewValue(digit: "2")
        LabelDiplay.text = model.providedValue
    }
    
    @IBAction func threepressed(_ sender: Any) {
        model.addToNewValue(digit: "3")
        LabelDiplay.text = model.providedValue
    }
    
    @IBAction func pluspressed(_ sender: Any) {
        model.addition()
        LabelDiplay.text = model.providedValue
    }
    
    @IBAction func zeropressed(_ sender: Any) {
        model.addToNewValue(digit: "0")
        LabelDiplay.text = model.providedValue
    }
    
    @IBAction func dotpressed(_ sender: Any) {
        model.addToNewValue(digit: ".")
        LabelDiplay.text = model.providedValue
    }
    
    @IBAction func enterpressed(_ sender: Any) {
        model.equals()
        if model.computedValue != nil {
        LabelDiplay.text = String(describing: model.computedValue!)
        LabelDiplay.text = String(format: "%g", model.computedValue!)
    }
    }
    
    @IBAction func fourpressed(_ sender: Any) {
        model.addToNewValue(digit: "4")
        LabelDiplay.text = model.providedValue
    }
    
    @IBAction func fivepressed(_ sender: Any) {
        model.addToNewValue(digit: "5")
        LabelDiplay.text = model.providedValue
    }
    
    @IBAction func sixpressed(_ sender: Any) {
        model.addToNewValue(digit: "6")
        LabelDiplay.text = model.providedValue
    }

 
    @IBAction func minuspressed(_ sender: Any) {
        model.subtraction()
        LabelDiplay.text = model.providedValue
    }
    
    
    @IBAction func sevenpressed(_ sender: Any) {
        model.addToNewValue(digit: "7")
        LabelDiplay.text = model.providedValue
    }
    
    @IBAction func eightpressed(_ sender: Any) {
        model.addToNewValue(digit: "8")
        LabelDiplay.text = model.providedValue
    }
    
    @IBAction func ninepressed(_ sender: Any) {
        model.addToNewValue(digit: "9")
        LabelDiplay.text = model.providedValue
    }
    
    @IBAction func clearpressed(_ sender: Any) {
        model.clear()
        LabelDiplay.text = model.providedValue
    }
    
    @IBAction func plusminuspressed(_ sender: Any) {
       model.plusminus()
        LabelDiplay.text = model.providedValue
    }
    
    @IBAction func multiplication(_ sender: Any) {
        model.multiply()
    }
    
    @IBAction func Divisionpressed(_ sender: Any) {
        model.divide()
    }
    
    @IBAction func percentpressed(_ sender: Any) {
        model.percentage()
         LabelDiplay.text = String(model.computedValue!)
    }
}
