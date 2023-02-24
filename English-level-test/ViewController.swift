//
//  ViewController.swift
//  English-level-test
//
//  Created by Maciej Dubowik on 22/02/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button1.layer.cornerRadius = 10
        button1.layer.borderColor = UIColor.systemBlue.cgColor
        button1.layer.borderWidth = 2
    }
    

}

