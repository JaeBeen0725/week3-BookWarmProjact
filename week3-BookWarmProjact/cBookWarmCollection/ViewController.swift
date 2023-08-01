//
//  ViewController.swift
//  week3-BookWarmProjact
//
//  Created by Jae Oh on 2023/07/31.
//

import UIKit

class ViewController: UIViewController {

   
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
    
    navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked)) 
    navigationItem.leftBarButtonItem?.tintColor = .black
    
    
}

    
@objc
    func closeButtonClicked() {
  
    dismiss(animated: true)
    
  
    
}

}

