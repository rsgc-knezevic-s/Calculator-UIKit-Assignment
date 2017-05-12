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
    
    //type is a varible that holds the state of the plusorminus function
    //when it is 0 or 2 then the plusorminus function embeded in the equals function. When it equals 1 the code in the equals function runs
    var type : Int = 0
    
    // MARK: Initializer(s)
    
    // MARK: Method(s) a.k.a. Function(s)
    func addToNewValue(digit : String) {
        providedValue = providedValue + digit
    }
    
    // function that is called when the percentage button is pressed
    func Percent(){
        operation = Operation.percentage
        
        updateState()
        equals()
    }
    
    /**
     Sets calculator operation to multiplication, and computes a new value, if needed.
     */
    
    // function that is called when the multiplication button is pressed
    func multiply() {
        
        // Set the operation
        operation = Operation.multiplication
        
        updateState()
    }
    
    /**
     Sets calculator operation to division, and computes a new value, if needed.
     */
    
    // function that is called when the division button is pressed
    func divide() {
        
        // Set the operation
        operation = Operation.division
        
        updateState()
    }
    
    // function that is called when the plusorminus button is pressed
    func plusorminus(){
        if computedValue == nil && providedValue == ""{
            
            if type == 1{
                type = 2
            }
            else{
                type = 1
            }
        }
        else {
            type = 1
            equals()
        }
        updateState()
    }
    
    // function that is called when the addition button is pressed
    func addition(){
        operation = Operation.addition
        
        updateState()
    }
    
    // function that is called when the subtraction button is pressed
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
    // function that is called when the equals button is pressed
    func equals() {
        
        // Check operation type
        if operation == Operation.multiplication {
            computedValue = computedValue! * Double(providedValue)!
        } else if operation == Operation.division {
            computedValue = computedValue! / Double(providedValue)!
        }
        else if operation == Operation.addition{
            computedValue = computedValue! + Double(providedValue)!
        }
        else if operation == Operation.subtraction {
            computedValue = computedValue! - Double(providedValue)!
        }
        else if operation == Operation.percentage {
            updateState()
            computedValue = computedValue! / 100
        }
            // does the percentage arithmetic
        else if operation == Operation.percentage{
            
            if computedValue != nil{
                computedValue = computedValue!/100
            }
            else{
                computedValue = Double(providedValue)! / 100
            }
            updateState()
        }
        
        //used for plus or minus
        if type == 1{
            
            if providedValue != ""{
                
                if operation != nil {
                    computedValue = computedValue! * (-1)
                }
                else{
                    computedValue = Double(providedValue)! * (-1)
                }
            }
            else if computedValue != nil{
                computedValue = computedValue! * (-1)
            }
            type = 2
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
    // function that is called when the clear button is pressed
    func clear() {
        
        // Reset everthing
        type = 0
        operation = nil
        providedValue = ""
        computedValue = nil
    }
    
    
    
    
}
