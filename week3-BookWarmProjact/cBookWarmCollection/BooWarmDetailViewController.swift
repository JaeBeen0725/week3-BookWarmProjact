//
//  BooWarmDetailViewController.swift
//  week3-BookWarmProjact
//
//  Created by Jae Oh on 2023/07/31.
//

import UIKit

class BooWarmDetailViewController: UIViewController {

    @IBOutlet var bookImage: UIImageView!
    @IBOutlet var bookTitleLabel: UILabel!
    @IBOutlet var bookDate: UILabel!
    
    var bookImage1: UIImage = UIImage(named: "암살")!
    var booktitle1: String = "title"
    var bookDate1: String = "date"
    
    var bookwarmDetail: String = "a"
    override func viewDidLoad() {
        super.viewDidLoad()
        
          bookImage.image = bookImage1
          bookTitleLabel.text = booktitle1
          bookDate.text = bookDate1
          
     
    }
    

    
    
    

}
