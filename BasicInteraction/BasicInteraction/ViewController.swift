//
//  ViewController.swift
//  BasicInteraction
//
//  Created by Vladimir Valter on 27.10.15.
//  Copyright © 2015 Vladimir Valter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var simpleLable: UILabel!
    @IBOutlet weak var simpleTextfiled: UITextField!

    @IBAction func changeLable(sender: AnyObject) {
         simpleLable.text = "Hello, " + simpleTextfiled.text!
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

