import UIKit

class CalculatorModel {
    
    let maxValue: Int  = 99999
    var argument1: Int = 0
    var argument2: Int = 0
    var operat: Character? = nil
    
    func btnPressed( digit: Int) {
        if operat == nil {
            let newValue: Int = self.argument1 * 10 + digit
            if newValue > self.maxValue {
                return
            }
            self.argument1 = newValue
        } else {
            let newValue: Int = self.argument2 * 10 + digit
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
    
}
