import UIKit

class ViewController: UIViewController {
    
    var model: CalculatorModel!
    
    @IBOutlet weak var TextField: UITextField!
    
    @IBAction func digitBtn(_ sender: UIButton) {
        model.btnPressed(digit: Double(sender.tag))
        display()
    }
    @IBAction func cleanBtn(_ sender: Any) {
        model.reset()
        display()
    }
    @IBAction func equal(_ sender: Any) {
        if model.operat == nil {
            return
        }
        model.calculate()
        display()
    }
    @IBAction func plus(_ sender: Any) {
        model.doOperate(op: "+")
        display()
    }
    @IBAction func minus(_ sender: Any) {
        model.doOperate(op: "-")
        display()
    }
    @IBAction func multiple(_ sender: Any) {
        model.doOperate(op: "*")
        display()
    }
    @IBAction func divide(_ sender: Any) {
        model.doOperate(op: "/")
        display()
    }
    @IBAction func plusMinusBtn(_ sender: Any) {
        model.plusMinusBtnPressed(plusMinusBtn: "-")
        display()
    }
    @IBAction func percentBtn(_ sender: Any) {
        model.percentBtnPressed()
        display()
    }
    @IBAction func dotBtn(_ sender: Any) {
        display()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model = CalculatorModel()
        display()
    }
    
    func display() {
        if model.operat == nil || model.argument2 == 0 {
            TextField.text = formatter(argument: model.argument1)
        } else {
            TextField.text = formatter(argument: model.argument2)
        }
    }
    
    func formatter(argument: Double) -> String {
        let hasFloatPart = argument.truncatingRemainder(dividingBy: 1) > 0
        
        if (hasFloatPart) {
            return String(argument)
        }
        
        return String(Int(argument))
    }
    
}
