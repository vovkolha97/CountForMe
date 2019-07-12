import UIKit
import Foundation

class CalculatorModel {
    var argument1: Double = 0
    var argument2: Double = 0
    
    var operat: String? = nil
    
    var isDotPressed: Bool = false
    var isNewValue: Bool = true
    
    var input: String = ""
    var operators: [String] = ["+", "-", "*", "/"]
    var actions: [String] = ["%", ".", "+/-", "c", "="]
    
    func actionHandler(btnTitle: String) {
        let isNumber = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: btnTitle))
        
        if isNumber {
            addNumber(number: btnTitle)
            return
        }
        
        if operators.contains(btnTitle) {
            calculateArguments()
            operatorSelected(operat: btnTitle)
            outputFormatter()
        } else if actions.contains(btnTitle) {
            applyAction(action: btnTitle)
        }
        
    }
    
    func addNumber (number: String) {
        if isNewValue {
            input = number
        } else {
            input.append(contentsOf: number)
        }
        isNewValue = false
    }
    
    func applyAction (action: String) {
        
        switch action {
        case ".":
            addDot()
        case "c":
            reset()
        case "=":
            calculate()
        default:
            print("Unknown operator %s", operat as Any)
            return
        }
    }
    
    func calculateArguments() {
        if self.operat != nil {
            argument2 = Double(input)!
        } else {
            argument1 = Double(input)!
        }
    }
    
    func operatorSelected( operat: String) {
        if self.operat != nil {
            calculate()
        } else {
            self.operat = operat
            isNewValue = true
        }
    }
    
    func calculate() {
        switch operat {
        case "%":
            percentBtnPressed()
        case "+/-":
            plusMinusBtnPressed()
        case "+" :
            self.argument1 = argument1 + argument2
        case "-":
            self.argument1 = argument1 - argument2
        case "/":
            self.argument1 = argument1 / argument2
        case "*":
            self.argument1 = argument1 * argument2
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
    
    func plusMinusBtnPressed()  {
        if operat == nil {
            argument1 = argument1 * -1
        } else {
            argument2 = argument2 * -1
        }
    }
    
    func percentBtnPressed() {
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
    
    func addDot() {
        if (isDotPressed)  {
            input.append(contentsOf: ".")
        }
        
        isDotPressed = true
    }
    
    func outputFormatter() {
        if isNewValue {
            input = "0"
            return
        }
        if operat == nil {
            input = formatter(argument: String(argument1))
        } else {
            input = formatter(argument: String(argument2))
        }
    }
    
    func formatter(argument: String) -> String{
        let delimiter = "."
        if argument.contains(delimiter) {
            let tokens = argument.components(separatedBy: delimiter)
            if tokens.last == "0" {
                return tokens.first!
            }
        }
        return argument
    }
    
}
