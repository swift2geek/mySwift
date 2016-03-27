//
//  ThirdViewController.swift
//  TabbedDemo
//
//  Created by Vladimir Valter on 06.03.16.
//  Copyright © 2016 Vladimir Valter. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   print("viewDidLoad initial started")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        print("third VC about to apear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        print("third VC about to DISapear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
