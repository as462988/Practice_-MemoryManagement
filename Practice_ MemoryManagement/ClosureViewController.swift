//
//  ClosureViewController.swift
//  Practice_ MemoryManagement
//
//  Created by yueh on 2019/8/21.
//  Copyright © 2019 yueh. All rights reserved.
//

import UIKit

class ClosureViewController: UIViewController {
    
    let myView = MyView()
    var timesTapped = 0
    
    let backBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       view.backgroundColor = .white
       
        view.addSubview(backBtn)
        setBtn()
        
        backBtn.addTarget(self, action: #selector(clickBackBtn), for: .touchUpInside)
    }
    
    func setupCustomView(){
        
//        myView.onTap = { [weak self] in
//            self?.timesTapped += 1
//        }
        
        myView.onTap = {
            self.timesTapped += 1
        }
    }
    deinit {
        print("ClosureViewController deinit")
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

class MyView: UIView{
    
    var onTap:(()->Void)?
}
