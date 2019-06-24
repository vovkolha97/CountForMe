import UIKit

class ViewController: UIViewController {
    
    var model: CalculatorModel!
    
    @IBOutlet weak var TextField: UITextField!
    
    @IBAction func digitBtn(_ sender: UIButton) {
        addNumber(number: String(sender.tag))
    }
    @IBAction func cleanBtn(_ sender: Any) {
        model.reset()
        display()
    }
    @IBAction func equal(_ sender: Any) {
        if model.operat == nil {
            return
        }
        model.operatorSelected(operat: "=", text: TextField.text!)
        display()
    }
    @IBAction func plus(_ sender: Any) {
        model.operatorSelected(operat: "+", text: TextField.text!)
        display()
    }
    @IBAction func minus(_ sender: Any) {
        model.operatorSelected(operat: "-", text: TextField.text!)
        display()
    }
    @IBAction func multiple(_ sender: Any) {
        model.operatorSelected(operat: "*", text: TextField.text!)
        display()
    }
    @IBAction func divide(_ sender: Any) {
        model.operatorSelected(operat: "/", text: TextField.text!)
        display()
    }
    @IBAction func plusMinusBtn(_ sender: Any) {
        model.plusMinusBtnPressed(text: TextField.text!)
        display()
    }
    @IBAction func percentBtn(_ sender: Any) {
        model.percentBtnPressed()
        display()
    }
    @IBAction func dotBtn(_ sender: Any) {
        addDot()
        model.dotBtnPressed()
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
