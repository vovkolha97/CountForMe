import UIKit

class CalculatorModel {
    
    let maxValue: Double  = 999999
    var argument1: Double = 0
    var argument2: Double = 0
    var operat: Character? = nil
    
    func btnPressed( digit: Double) {
        if operat == nil {
            let newValue: Double = self.argument1 * 10 + digit
            if newValue > self.maxValue {
                return
            }
            self.argument1 = newValue
        } else {
            let newValue: Double = self.argument2 * 10 + digit
            if newValue > self.maxValue {
                return
            }
            self.argument2 = newValue
        }
    }
    
    func operatorSelected( operat: Character) {
        if self.operat != nil {
            calculate()
        }
        self.operat = operat
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
    func doOperate(op: Character) {
        operatorSelected(operat: op)
    }
    func reset() {
        argument1 = 0
        argument2 = 0
        operat = nil
    }
    func plusMinusBtnPressed(plusMinusBtn: Character) {
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
        } else if argument1 != 0{
            argument1 /= 100
        }
        operat = "%"
    }
}
