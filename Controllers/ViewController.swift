import UIKit

class ViewController: UIViewController {
     var argument1: Int = 0
     var argument2: Int = 0
    var operatorBtn:Character?
    
    
    @IBOutlet weak var TextField: UITextField!
   
    @IBAction func seven(_ sender: Any) {
        btnPressed(argument1: 7)
    }
    @IBAction func eight(_ sender: Any) {
        btnPressed(argument1: 8)
    }
    @IBAction func nine(_ sender: Any) {
        btnPressed(argument1: 9)
    }
    @IBAction func five(_ sender: Any) {
        btnPressed(argument1: 5)
    }
    @IBAction func four(_ sender: Any) {
        btnPressed(argument1: 4)
    }
    @IBAction func six(_ sender: Any) {
        btnPressed(argument1: 6)
    }
    @IBAction func one(_ sender: Any) {
        btnPressed(argument1: 1)
    }
    @IBAction func two(_ sender: Any) {
        btnPressed(argument1: 2)
    }
    @IBAction func three(_ sender: Any) {
        btnPressed(argument1: 3)
    }
    @IBAction func zero(_ sender: Any) {
        btnPressed(argument1: 0)
    }
    @IBAction func cleanBtn(_ sender: Any) {
    }
    @IBAction func equal(_ sender: Any) {
    }
    @IBAction func plus(_ sender: Any) {
        operatorChoosed(operatorBtn: "+")
    }
    @IBAction func minus(_ sender: Any) {
        operatorChoosed(operatorBtn: "-")
        
    }
    @IBAction func multiple(_ sender: Any) {
        operatorChoosed(operatorBtn: "*")
        
    }
    @IBAction func devide(_ sender: Any) {
        operatorChoosed(operatorBtn: "/")
        
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func btnPressed( argument1: Int) {
        if TextField.text!.count != 4 {
          self.argument1 = (self.argument1 * 10) + argument1
            TextField.text = String(self.argument1)
        }
  }
    func operatorChoosed( operatorBtn: Character) {
        TextField.text! = TextField.text! + String(operatorBtn)
    }
}
