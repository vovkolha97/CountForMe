import UIKit

class ViewController: UIViewController {
    
    var model: CalculatorModel!
    
    @IBOutlet weak var TextField: UITextField!
    
    @IBAction func digitBtn(_ sender: UIButton) {
        model.btnPressed(digit: sender.tag)
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
    }
    
    @IBAction func percentBtn(_ sender: Any) {
    }
    @IBAction func dotBtn(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model = CalculatorModel()
        display()
    }
    
    func display() {
        if model.operat == nil || model.argument2 == 0 {
            TextField.text = String(model.argument1)
        } else {
            TextField.text = String(model.argument2)
        }
    }
    
}
