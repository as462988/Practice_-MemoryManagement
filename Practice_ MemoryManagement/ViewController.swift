//
//  ViewController.swift
//  Practice_ MemoryManagement
//
//  Created by yueh on 2019/8/21.
//  Copyright © 2019 yueh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let nextVC = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        nextVC.instantiateViewController(withIdentifier: "VC")
    }
    @IBAction func nextToVcBtn(_ sender: Any) {
        
        show(NextViewController(), sender: nil)
    }
    
    @IBAction func closureToVcBtn(_ sender: Any) {
        
        show(ClosureViewController(), sender: nil)
    }
    
    
}





