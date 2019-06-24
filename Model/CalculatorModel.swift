import UIKit

class CalculatorModel {
    
    let maxValue: Double  = 999999
    var argument1: Double = 0
    var argument2: Double = 0
    var operat: Character? = nil
    var isDotPressed: Bool = false
    var isNewValue: Bool = true
    
    
    func operatorSelected( operat: Character, text: String) {
        if self.operat != nil {
            argument2 = Double(text)!
            calculate()
        } else {
            argument1 = Double(text)!
            self.operat = operat
            isNewValue = true
        }
        
    }
    func calculate() {
        switch operat {
        case "+" :
            self.argument1 = argument1 + argument2
        case "-":
            self.argument1 = argument1 - argument2
        case "/":
            self.argument1 = argument1 / argument2
        case "*":
            self.argument1 = argument1 * argument2
        case "%":
            print("")
        default:
            print("Unknown operator %s", operat as Any)
            return
        }
        argument2 = 0
        operat = nil
        
    }
    
    func reset() {
        argument1 = 0
        argument2 = 0
        operat = nil
        isDotPressed = false
        isNewValue = true
    }
    
    func plusMinusBtnPressed(text: String)  {
        if operat == nil {
            argument1 = Double(text)!
            argument1 = argument1 * -1
        } else {
            argument2 = Double(text)!
            argument2 = argument2 * -1
        }
    }
    
    func percentBtnPressed(text: String) {
        if operat == nil {
            argument1 = Double(text)!
        } else {
            argument2 = Double(text)!
        }
        if argument2 != 0{
            let percentValue = argument2 / 100
            let percentDisplayed = percentValue * argument1
            switch operat {
            case "*" :
                self.argument1 = argument1 * percentValue
            case "-":
                self.argument1 = argument1 - percentDisplayed
            case "/":
                self.argument1 = argument1 / percentValue
            case "+":
                self.argument1 = argument1 + percentDisplayed
            default:
                print("Unknown operator %s", operat as Any)
                return
            }
            self.argument2 = percentDisplayed
            
        } else if argument1 != 0 {
            argument1 /= 100
        }
        operat = "%"
    }
    
    func dotBtnPressed() {
        isDotPressed = true
        
    }
}
