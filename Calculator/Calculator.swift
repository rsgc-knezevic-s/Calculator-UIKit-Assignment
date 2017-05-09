//
//  Calculator.swift
//  CalculatorTestRun
//
//  Created by Russell Gordon on 4/27/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import Foundation

class Calculator {
    
    // MARK: Properties
    var providedValue : String = ""
    var computedValue : Double? = nil
    var operation : Operation? = nil
    var w = 1
    
    // MARK: Initializer(s)
    
    // MARK: Method(s) a.k.a. Function(s)
    func addToNewValue(digit : String) {
        providedValue = providedValue + digit
    }
    
    
    func Percent(){
        operation = Operation.percentage
        
    }
    
    
    
    /**
     Sets calculator operation to multiplication, and computes a new value, if needed.
     */
    func multiply() {
        
        // Set the operation
        operation = Operation.multiplication
        
        updateState()
    }
    
    /**
     Sets calculator operation to division, and computes a new value, if needed.
     */
    func divide() {
        
        // Set the operation
        operation = Operation.division
        
        updateState()
    }
    
    
    func plusorminus(){
        
        //w is a varible that is used by the plusorminus function to hold whether or not to multiply the computed value by negative one
        
        w = 2
        
        if (providedValue == "") && (computedValue == nil){
            w = 0
        }
        else if (providedValue == "") {
            computedValue = computedValue! * (-1)
            w = 1
        }
        else{
            computedValue = Double(providedValue)! * (-1)
            providedValue = ""
        }
    }
    
    func addition(){
        operation = Operation.addition
        
        updateState()
    }
    
    func subtraction(){
        operation = Operation.subtraction
        
        updateState()
    }
    
    
    
    /**
     Updates calculator state.
     
     This means: what the current computed value is, what the new value provided by the user is, and whether to perform an operation on the computed value and provided value.
     */
    func updateState() {
        
        if computedValue == nil {
            
            // 1. When in this branch, there is no current computed value, just a new provided value.
            
            // Now then, the only thing to do is make the provided value become the computed value.
            makeProvidedValueComputedValue()
            
        } else {
            
            // 1. When in this branch, there is a current computed value.
            
            if providedValue == "" {
                
                // 2. When in this branch, there no provided value yet (an empty string: "")
                //    Only an operation has been logged (multiply, divide, et cetera).
                
                // So, do nothing.
                
            } else {
                
                // 2. When in this branch, a new provided value has been given.
                
                // So, perform the operation!
                equals()    
            }
            
        }
        
    }
    
    /**
     Determine a new computed value.
     
     The current operation is performed on the computed value and the provided value.
     */
    func equals() {
        
        // Check operation type
        if operation == Operation.multiplication {
            computedValue = computedValue! * Double(providedValue)!
            if (w == 0){
                w = 1
            }
        } else if operation == Operation.division {
            computedValue = computedValue! / Double(providedValue)!
            if (w == 0){
                w = 1
            }
        }
        else if operation == Operation.addition{
            computedValue = computedValue! + Double(providedValue)!
            if (w == 0){
                w = 1
            }
        }
        else if operation == Operation.subtraction {
            computedValue = computedValue! - Double(providedValue)!
            if (w == 0){
                w = 1
            }
        }
       
        //this if statement is part of the plusorminus function (as well as the w = 1's within the if statement above)
        
        if (w == 0){
            computedValue = (-1) * Double(providedValue)!
            w = 1
        }
        else if (w == 1){
            computedValue = computedValue! * (-1)
        }
        
        // The operation selected has been performed, so get ready to receive new operation
        // and new value
        operation = nil
        providedValue = ""
        
    }
    

    
    
    /**
     Makes the computed value become whatever value the user has typed into the calculator.
     */
    func makeProvidedValueComputedValue() {
        
        computedValue = Double(providedValue)
        providedValue = ""
    }
    
    /**
     Resets the operation, provided value, and computed value.
     */
    func clear() {
        
        // Reset everthing
        w = 2
        operation = nil
        providedValue = ""
        computedValue = nil
    }
    
    
    
    
}
