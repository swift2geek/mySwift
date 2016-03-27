//
//  ViewController.swift
//  BasicInteraction2
//
//  Created by Vladimir Valter on 27.10.15.
//  Copyright © 2015 Vladimir Valter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var simpleTextField: UITextField!
    
    @IBOutlet weak var simpleLable: UILabel!
    
    @IBAction func changeLable(sender: AnyObject) {
        simpleLable.text = "Hello, " + simpleTextField.text! + "!"
        self.simpleTextField.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

