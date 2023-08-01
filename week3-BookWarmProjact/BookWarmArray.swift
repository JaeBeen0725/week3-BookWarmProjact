//
//  BookWarmArray.swift
//  week3-BookWarmProjact
//
//  Created by Jae Oh on 2023/07/31.
//

import Foundation
import UIKit


struct BookWarmArray {
    static func a() -> UIColor {
        
        let b: [UIColor] = [.black, .blue, .brown, .darkGray, .green, .purple, .systemPink]
        return b.randomElement()!
    }
    
    
    var bookWarmArray = [BookWarmValue(title: "암살", image: UIImage(named: "암살")!, date: "23.07.31", like: false, color: a()), BookWarmValue(title: "극한직업", image: UIImage(named: "극한직업")!, date: "23.07.31", like: false, color: a()), BookWarmValue(title: "도둑들", image: UIImage(named: "도둑들")!, date: "23.07.31", like: false, color: a()), BookWarmValue(title: "명량", image: UIImage(named: "명량")!, date: "23.07.31", like: false, color: a()), BookWarmValue(title: "베테랑", image: UIImage(named: "베테랑")!, date: "23.07.31", like: false, color: a()), BookWarmValue(title: "부산행", image: UIImage(named: "부산행")!, date: "23.07.31", like: false, color: a()), BookWarmValue(title: "아바타", image: UIImage(named: "아바타")!, date: "23.07.31", like: false, color: a()), BookWarmValue(title: "알라딘", image: UIImage(named: "알라딘")!, date: "23.07.31", like: false, color: a()),BookWarmValue(title: "왕의남자", image: UIImage(named: "왕의남자")!, date: "23.07.31", like: false, color: a())]
    
    var bookImage: [UIImage] = [UIImage(named: "암살")!, UIImage(named: "극한직업")!, UIImage(named: "도둑들")!, UIImage(named: "명량")!, UIImage(named: "베테랑")!, UIImage(named: "부산행")!, UIImage(named: "아바타")!, UIImage(named: "알라딘")!, UIImage(named: "왕의남자")!]
    var bookTitle: [String] = ["암살", "극한직업", "도둑들", "명량", "베테랑", "부산행", "아바타", "알라딘", "왕의남자"]
    var bookDate: [String] = ["23.07.31","23.07.31","23.07.31","23.07.31","23.07.31","23.07.31","23.07.31","23.07.31","23.07.31"]
    
    
        
    
    
}



struct BookWarmTableViewArray {
    var bookWarmTableViewArray = [BookWarmTableViewControllerValue(title: "어린왕자"), BookWarmTableViewControllerValue(title: "인어공주"),BookWarmTableViewControllerValue(title: "피터팬"), BookWarmTableViewControllerValue(title: "해리포터")]
}
