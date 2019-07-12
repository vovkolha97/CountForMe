import UIKit
import Foundation

class ViewController: UIViewController {
    
    var model: CalculatorModel!
    
    @IBOutlet weak var TextField: UITextField!
    
    @IBAction func valueBtn(_ sender: UIButton) {
        model.actionHandler(btnTitle: sender.currentTitle!)
        display()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model = CalculatorModel()
        display()
    }   
    
    func display() {
        TextField.text = model.input
    }
}
