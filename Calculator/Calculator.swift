import Foundation

class Model {
    
    var randomNumber : Int = 0
    var computedBool : Bool?
    var input : String = ""
    var b: Int = 0
    
    
    public func random(from : Int, toButNotIncluding : Int) -> Int {
        
        let max = UInt32(toButNotIncluding - from)
        
        return Int(arc4random_uniform(max)) + from
        
    }
    
    
    func square() {
        
        for x in stride(from: 1, to: 10, by: 1){
            if randomNumber == (x*x){
                computedBool = true
            }
            else{
                computedBool = false
            }
        }
    }

    func even(){
        
        if (randomNumber % 2) == 0{
            computedBool = true
        }
        else{
            computedBool = false
        }
    }
    
    func odd(){
        
        if (randomNumber % 2) == 1{
            computedBool = true
        }
        else{
            computedBool = false
        }
    }
    
    func newNumber() {
        
        randomNumber = random(from: 1, toButNotIncluding: 101)
        
    }
    
    
    func prime(){
        
        for a in stride(from: 1, to: 101, by: 1){
            
            if ((randomNumber % a) == 0) && (randomNumber != a){
                b = 1
            }
        }
        
            if b == 1{
                computedBool = false
            }
            else if b == 0{
                computedBool = true
            }
        b = 0 
    }
    
    func divideBythree(){
        
        if (randomNumber % 3) == 0 {
            
            computedBool = true
        }
        else {
            computedBool = false
        }
    }
    
    func divideByfour(){
        
        if (randomNumber % 4) == 0 {
            
            computedBool = true
        }
        else {
            computedBool = false
        }
    }
    
    func divideByseven(){
        
        if (randomNumber % 7) == 0 {
            
            computedBool = true
        }
        else {
            computedBool = false
        }
    }
    
    func divideBynine(){
        
        if (randomNumber % 9) == 0 {
            
            computedBool = true
        }
        else {
            computedBool = false
        }
    }
    
    
    func morethan() {
        
        if randomNumber >= 50 {
            
            computedBool = true
            
        } else {
            
            computedBool = false
        }
        
        
        
    }
    
    func lessthan() {
        
        if randomNumber < 50 {
            
            computedBool = true
            
        } else {
            
            computedBool = false
        }
        
        
        
    }
    
    
    
    func submit(){
        
        if (input == "") {
            
            //do nothing
            
        }
        else if (Int(input)!) == randomNumber{
            
            computedBool = true
            
        }
        else if (Int(input)!) != randomNumber{
            
            computedBool = false
        }
        
        
    }
    
}



