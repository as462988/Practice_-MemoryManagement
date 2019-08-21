//
//  NextViewController.swift
//  Practice_ MemoryManagement
//
//  Created by yueh on 2019/8/21.
//  Copyright © 2019 yueh. All rights reserved.
//

import UIKit

class NextViewController: UIViewController, NextViewDelegate {
    
    let backBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let nextView = NextView(frame: CGRect(x: 20, y: 200, width: 200, height: 200))
        nextView.backgroundColor = UIColor(red: 234/255, green: 162/255, blue: 206/255, alpha: 1)
        view.addSubview(nextView)
        view.addSubview(backBtn)
        setBtn()
        nextView.delegate = self
        
        backBtn.addTarget(self, action: #selector(clickBackBtn), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("NextViewController deinit")
    }
    
    func setBtn(){
        
        backBtn.setTitle("Back", for: .normal)
        backBtn.setTitleColor(.white, for: .normal)
        backBtn.backgroundColor = .black
        
        backBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            backBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            backBtn.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
            
            ])
    }
    
   @objc func clickBackBtn(){
        
        dismiss(animated: false, completion: nil)
    }
    
}

protocol NextViewDelegate: AnyObject {
    
}

class NextView: UIView {
    
    //    var delegate: NextViewDelegate?
    weak var delegate: NextViewDelegate?
    
    deinit {
        print("NextView deinit")
    }
}

