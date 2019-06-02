import UIKit

class ViewController: UIViewController {
    
    var model: CalculatorModel!
    
    @IBOutlet weak var TextField: UITextField!
    
    @IBAction func seven(_ sender: Any) {
        model.btnPressed(digit: 7)
        display()
    }
    @IBAction func eight(_ sender: Any) {
        model.btnPressed(digit: 8)
        display()
    }
    @IBAction func nine(_ sender: Any) {
        model.btnPressed(digit: 9)
        display()
    }
    @IBAction func five(_ sender: Any) {
        model.btnPressed(digit: 5)
        display()
    }
    @IBAction func four(_ sender: Any) {
        model.btnPressed(digit: 4)
        display()
    }
    @IBAction func six(_ sender: Any) {
        model.btnPressed(digit: 6)
        display()
    }
    @IBAction func one(_ sender: Any) {
        model.btnPressed(digit: 1)
        display()
    }
    @IBAction func two(_ sender: Any) {
        model.btnPressed(digit: 2)
        display()
    }
    @IBAction func three(_ sender: Any) {
        model.btnPressed(digit: 3)
        display()
    }
    @IBAction func zero(_ sender: Any) {
        model.btnPressed(digit: 0)
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
