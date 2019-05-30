//
//  ViewController.swift
//  CountForMe
//
//  Created by Вовк Ольга' on 5/29/19.
//  Copyright © 2019 Вовк Ольга'. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TextField: UITextField!
    
   
    @IBAction func seven(_ sender: Any) {
        TextField.text = String(7)
    }
    
    @IBAction func eight(_ sender: Any) {

    }
    @IBAction func nine(_ sender: Any) {
    }
    @IBAction func five(_ sender: Any) {
    }
    @IBAction func four(_ sender: Any) {
    }
    @IBAction func six(_ sender: Any) {
    }
    @IBAction func one(_ sender: Any) {
    }
    @IBAction func two(_ sender: Any) {
    }
    @IBAction func three(_ sender: Any) {
    }
    @IBAction func zero(_ sender: Any) {
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

     TextField.text = "0"
    }
    
    
}
