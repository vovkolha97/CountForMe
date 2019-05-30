import UIKit

class ViewController: UIViewController {
     var someNum: Int?
    
    @IBOutlet weak var TextField: UITextField!
   
    @IBAction func seven(_ sender: Any) {
        btnpressed(someNum: 7)
    }
    
    @IBAction func eight(_ sender: Any) {
        btnpressed(someNum: 8)
    
    }
    @IBAction func nine(_ sender: Any) {
        btnpressed(someNum: 9)
    }
    @IBAction func five(_ sender: Any) {
        btnpressed(someNum: 5)
    }
    @IBAction func four(_ sender: Any) {
        btnpressed(someNum: 4)
    }
    @IBAction func six(_ sender: Any) {
        btnpressed(someNum: 6)
    }
    @IBAction func one(_ sender: Any) {
        btnpressed(someNum: 1)
    }
    @IBAction func two(_ sender: Any) {
        btnpressed(someNum: 2)
    }
    @IBAction func three(_ sender: Any) {
        btnpressed(someNum: 3)
    }
    @IBAction func zero(_ sender: Any) {
        btnpressed(someNum: 0)
    }
    @IBAction func cleanBtn(_ sender: Any) {
    }
    @IBAction func equal(_ sender: Any) {
    }
    @IBAction func plus(_ sender: Any) {
    }
    @IBAction func minus(_ sender: Any) {
    }
    @IBAction func multiple(_ sender: Any) {
    }
    @IBAction func devide(_ sender: Any) {
    }
  
    override func viewDidLoad() {
        
        super.viewDidLoad()
      
    
    }
    func btnpressed(someNum: Int) {
        TextField.text = String(someNum)
    }
   
}
