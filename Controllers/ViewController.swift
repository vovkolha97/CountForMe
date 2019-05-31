import UIKit

class ViewController: UIViewController {
     var argument1: Int = 0
     var argument2: Int = 0
     var operatorBtn:Character? = nil
    
    @IBOutlet weak var TextField: UITextField!
   
    @IBAction func seven(_ sender: Any) {
        btnPressed(digit: 7)
    }
    @IBAction func eight(_ sender: Any) {
        btnPressed(digit: 8)
    }
    @IBAction func nine(_ sender: Any) {
        btnPressed(digit: 9)
    }
    @IBAction func five(_ sender: Any) {
        btnPressed(digit: 5)
    }
    @IBAction func four(_ sender: Any) {
        btnPressed(digit: 4)
    }
    @IBAction func six(_ sender: Any) {
        btnPressed(digit: 6)
    }
    @IBAction func one(_ sender: Any) {
        btnPressed(digit: 1)
    }
    @IBAction func two(_ sender: Any) {
        btnPressed(digit: 2)
    }
    @IBAction func three(_ sender: Any) {
        btnPressed(digit: 3)
    }
    @IBAction func zero(_ sender: Any) {
        btnPressed(digit: 0)
    }
    @IBAction func cleanBtn(_ sender: Any) {
       reset()
        display()
    }
    @IBAction func equal(_ sender: Any) {
        resultBtn()
    }
    @IBAction func plus(_ sender: Any) {
        operatorChosed(operatorBtn: "+")
    }
    @IBAction func minus(_ sender: Any) {
        operatorChosed(operatorBtn: "-")
    }
    @IBAction func multiple(_ sender: Any) {
        operatorChosed(operatorBtn: "*")
    }
    @IBAction func divide(_ sender: Any) {
        operatorChosed(operatorBtn: "/")
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func btnPressed( digit: Int) {
            if operatorBtn.self == nil {
                self.argument1 = (self.argument1 * 10) + digit
                TextField.text = String(self.argument1)
            } else {
                self.argument2 = (self.argument2 * 10) + digit
                TextField.text! = TextField.text! + String(self.argument2)
            }
    }
    func operatorChosed( operatorBtn: Character) {
        self.operatorBtn = operatorBtn
        TextField.text = TextField.text! + String(operatorBtn)
    }
    func display() {
        if argument1 & argument2 == 0, operatorBtn == nil {
            TextField.text = "0"
        }
    }
    func reset() {
        argument1 = 0
        argument2 = 0
        operatorBtn = nil
    }
    
    func resultBtn() {
        switch operatorBtn {
        case "+" :
            TextField.text = String(argument1 + argument2)
        case "-":
            TextField.text = String(argument1 - argument2)
        case "/":
            TextField.text = String(argument1 / argument2)
        case "*":
            TextField.text = String(argument1 * argument2)
        default:
            TextField.text = TextField.text
        }
    }
}
