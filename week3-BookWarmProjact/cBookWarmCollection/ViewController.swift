//
//  ViewController.swift
//  week3-BookWarmProjact
//
//  Created by Jae Oh on 2023/07/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var searchViewController: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchViewController.text = "검색"
        
    
    navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked)) 
    navigationItem.leftBarButtonItem?.tintColor = .black
    
    
}

@objc
    func closeButtonClicked() {
  
    dismiss(animated: true)
    
  
    
}

}

