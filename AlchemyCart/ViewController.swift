//
//  ViewController.swift
//  AlchemyCart
//
//  Created by Артем Панченко on 27.11.2022. ничего нового
// 

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LabelToHi: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func HiLabel(_ sender: UIButton) {
        LabelToHi.text = "123"
    }
    @IBAction func ClearLabel(_ sender: Any) {
        LabelToHi.text = ""
    }
    
}
