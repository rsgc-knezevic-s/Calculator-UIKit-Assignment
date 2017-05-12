    //
//  ViewController.swift
//  Calculator
//
//  Created by Russell Gordon on 4/30/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //connection to view
        
    @IBOutlet weak var labelDisplay: UILabel!
    
    //Create instance of Calculator class
    
    var model = Calculator()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //clear the contents of the label
        labelDisplay.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //The actions which provide value to the buttons
    //When one is pressed
    @IBAction func onePressd(_ sender: Any) {
        
        model.addToNewValue(digit: "1")
        labelDisplay.text = model.providedValue
    }
    
    //When two is pressed
    @IBAction func twoPressed(_ sender: Any) {
        
        model.addToNewValue(digit: "2")
        labelDisplay.text = model.providedValue
    }
    
    //When three is pressed
    @IBAction func threePressed(_ sender: Any) {
        
        model.addToNewValue(digit: "3")
        labelDisplay.text = model.providedValue
    }
    
    //When four is pressed
    @IBAction func fourPressed(_ sender: Any) {
        
        model.addToNewValue(digit: "4")
        labelDisplay.text = model.providedValue
    }
    
    //When five is pressed
    @IBAction func fivePressed(_ sender: Any) {
        
        model.addToNewValue(digit: "5")
        labelDisplay.text = model.providedValue
    }
    
    //When six is pressed
    @IBAction func sixPressed(_ sender: Any) {
        
        model.addToNewValue(digit: "6")
        labelDisplay.text = model.providedValue
    }
    
    //When seven is pressed
    @IBAction func sevenPressed(_ sender: Any) {
        
        model.addToNewValue(digit: "7")
        labelDisplay.text = model.providedValue
    }
    
    //When eight is pressed
    @IBAction func eightPressed(_ sender: Any) {
        
        model.addToNewValue(digit: "8")
        labelDisplay.text = model.providedValue
    }
    
    //When nine is pressed
    @IBAction func ninePressed(_ sender: Any) {
        
        model.addToNewValue(digit: "9")
        labelDisplay.text = model.providedValue
    }
    
    //When zero is pressed
    @IBAction func zeroPressed(_ sender: Any) {
        
        model.addToNewValue(digit: "0")
        labelDisplay.text = model.providedValue
    }
    
    //When the period is pressed
    @IBAction func periodPressed(_ sender: Any) {
        
        model.addToNewValue(digit: ".")
        labelDisplay.text = model.providedValue
    }
    
    //arithmetic operator actions
    
    //When multiplication is pressed
    @IBAction func multiply(_ sender: Any) {
        
        model.multiply()
         labelDisplay.text = String("✕")
    }
    
    //When division is pressed
    @IBAction func divide(_ sender: Any) {
        
        model.divide()
         labelDisplay.text = String("÷")
    }
   
    //When addition is pressed
    @IBAction func addition(_ sender: Any) {
        
        model.addition()
         labelDisplay.text = String("+")
    }

    //When subtraction is pressed
    @IBAction func subtraction(_ sender: Any) {
        
        model.subtraction()
        labelDisplay.text = String("-")
    }
    
    //function actions (such as clear, equal, plus or minus etc.)
    
    //When equals is pressed
    @IBAction func equals(_ sender: Any) {
        model.equals()

        if (model.computedValue != nil){
            labelDisplay.text = String(format: "%g", model.computedValue!)
        }
    }
    
    //When clear is pressed
    @IBAction func clear(_ sender: Any) {
        
        model.clear()
        labelDisplay.text = String("0")
    }
    
    //When plusorminus is pressed
    @IBAction func plusorminus(_ sender: Any) {
        model.plusorminus()
        
        if (model.computedValue != nil){
            labelDisplay.text = String(format: "%g", model.computedValue!)
        }
    }
    
    //When percent is pressed
    @IBAction func Percent(_ sender: Any) {
        
        model.Percent()
        if (model.computedValue != nil){
            labelDisplay.text = String(format: "%g", model.computedValue!)
        }
    }
}





    


