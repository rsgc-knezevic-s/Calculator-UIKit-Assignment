//
//  ViewController.swift
//  Calculator
//
//  Created by Russell Gordon on 4/30/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var model = Model()
    
    
    @IBOutlet weak var labelDisplay: UILabel!
    
    @IBOutlet weak var dividedBythree: UIButton!
    @IBOutlet weak var dividedByfour: UIButton!
    @IBOutlet weak var dividedByseven: UIButton!
    @IBOutlet weak var dividedBynine: UIButton!
    @IBOutlet weak var dividedBy: UIButton!
    @IBOutlet weak var Textfield: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelDisplay.text = "Try and guess my number!"
        model.newNumber()
        
        dividedBythree.isHidden = true
        dividedByfour.isHidden = true
        dividedByseven.isHidden = true
        dividedBynine.isHidden = true
    }

    @IBAction func dividedBypressed(_ sender: Any) {

        if dividedBy.isHidden == true {
            
            dividedBy.isHidden = false
        }
        else if dividedBy.isHidden == false{
            
            dividedBy.isHidden = true
        }
        
        
        if (dividedBythree.isHidden == true) && (dividedByfour.isHidden == true) && (dividedByseven.isHidden == true) && (dividedBynine.isHidden == true){
            
            dividedBythree.isHidden = false
            dividedByfour.isHidden = false
            dividedByseven.isHidden = false
            dividedBynine.isHidden = false
            
        }
    }
    
    
    @IBAction func dividedBythreePressed(_ sender: Any) {
        
        model.divideBythree()
        
        dividedBy.isHidden = false
        dividedBythree.isHidden = true
        dividedByfour.isHidden = true
        dividedByseven.isHidden = true
        dividedBynine.isHidden = true
        
        if model.computedBool == true {
            
            labelDisplay.text = String("True")
        }
        else if model.computedBool == false {
            
            labelDisplay.text = String("False")
        }
    }
    
    @IBAction func dividedByfourPressed(_ sender: Any) {
        
        model.divideByfour()
        
        dividedBy.isHidden = false
        dividedBythree.isHidden = true
        dividedByfour.isHidden = true
        dividedByseven.isHidden = true
        dividedBynine.isHidden = true
        
        if model.computedBool == true {
            
            labelDisplay.text = String("True")
        }
        else if model.computedBool == false {
            
            labelDisplay.text = String("False")
        }
    }
    
    @IBAction func dividedBysevenPressed(_ sender: Any) {
        
        model.divideByseven()
        
        dividedBy.isHidden = false
        dividedBythree.isHidden = true
        dividedByfour.isHidden = true
        dividedByseven.isHidden = true
        dividedBynine.isHidden = true
        
        if model.computedBool == true {
            
            labelDisplay.text = String("True")
        }
        else if model.computedBool == false {
            
            labelDisplay.text = String("False")
        }
    }
    
    
    @IBAction func dividedByninePressed(_ sender: Any) {
        
        model.divideBynine()
        
        dividedBy.isHidden = false
        dividedBythree.isHidden = true
        dividedByfour.isHidden = true
        dividedByseven.isHidden = true
        dividedBynine.isHidden = true
        
        if model.computedBool == true {
            
            labelDisplay.text = String("True")
        }
        else if model.computedBool == false {
            
            labelDisplay.text = String("False")
        }
        
    }
    
    
    
    
    @IBAction func newNumberPressed(_ sender: Any) {
        
        model.newNumber()
        labelDisplay.text = String("")
        
    }
    
    @IBAction func evenPressed(_ sender: Any) {
        
        model.even()
        
        if model.computedBool == true {
            
            labelDisplay.text = String("True")
        }
        else if model.computedBool == false {
            
            labelDisplay.text = String("False")
        }
        
        
    }
    
    
    @IBAction func oddPressed(_ sender: Any) {
        
        model.odd()
        
        if model.computedBool == true {
            
            labelDisplay.text = String("True")
        }
        else if model.computedBool == false {
            
            labelDisplay.text = String("False")
        }
    }
    
    
    
    @IBAction func primePressed(_ sender: Any) {
        
        model.prime()
        
        if model.computedBool == true {
            
            labelDisplay.text = String("True")
        }
        else if model.computedBool == false {
            
            labelDisplay.text = String("False")
        }
    }
    
    @IBAction func squarePressed(_ sender: Any) {
        model.square()
        
        if model.computedBool == true {
            
            labelDisplay.text = String("True")
        }
        else if model.computedBool == false {
            
            labelDisplay.text = String("False")
        }
        
        
    }
    
    
    
    
    @IBAction func submitPressed(_ sender: Any) {
 
        if Textfield.text != nil{
        
            model.input = Textfield.text!
        }
        
        model.submit()
        
        if model.input == ""{
            labelDisplay.text = String("Hey! That's not a number!")
            
        }
        else if model.computedBool == true {
            
            labelDisplay.text = String("Congrats! You guessed my number!")
        }
        else if model.computedBool == false {
            
            labelDisplay.text = String("Sorry, you're Wrong!")
        }
        
        model.newNumber()
        
        Textfield.text = ""
        
    }
}







