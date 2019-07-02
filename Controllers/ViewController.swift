import UIKit
import Foundation

class ViewController: UIViewController {
    
    var model: CalculatorModel!
    
    @IBOutlet weak var TextField: UITextField!
    
    @IBAction func valueBtn(_ sender: UIButton) {
        let btnTitle = sender.currentTitle!
  let isNumber = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: btnTitle))
        if isNumber {
            addNumber(number: btnTitle)
        } else{
            model.applyAction(action: btnTitle)
            display()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model = CalculatorModel()
        display()
    }
    
    func addNumber (number: String) {
        if model.isNewValue {
            TextField.text = number
        } else  {
            TextField.text?.append(contentsOf: number)
        }
        model.isNewValue = false
    }
    
    func addDot() {
        if (!model.isDotPressed)  {
            TextField.text?.append(contentsOf: ".")
        }
    }
    
    func display() {
        if model.isNewValue {
            TextField.text = "0"
            return
        }
        if model.operat == nil {
            TextField.text = formatter(argument: String(model.argument1))
        } else {
            TextField.text = formatter(argument: String(model.argument2))
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
