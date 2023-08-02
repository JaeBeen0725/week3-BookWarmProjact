//
//  BookWarmCollectionViewCell.swift
//  week3-BookWarmProjact
//
//  Created by Jae Oh on 2023/07/31.
//

import UIKit

class BookWarmCollectionViewCell: UICollectionViewCell {
    static let bookWarmIdentifire = "BookWarmCollectionViewCell"
   
    @IBOutlet var bookTitleLabel: UILabel!
    @IBOutlet var bookImageView: UIImageView!
    @IBOutlet var bookDateLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
  
 
    
    func bookWarm(row: BookWarmValue) {
                
        layer.cornerRadius = 15
       layer.shadowColor = UIColor.black.cgColor
       layer.shadowOffset = .zero
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.5
        clipsToBounds = false
        backgroundColor = row.color
        
        bookDateLabel.text = row.date
        bookImageView.image = row.image
        bookImageView.contentMode = .scaleToFill
       bookTitleLabel.text = row.title
        
        if row.like == false {
            likeButton.setImage(UIImage(systemName: "hand.thumbsup"), for: .normal)
        } else{
            likeButton.setImage(UIImage(systemName: "hand.thumbsup.fill"), for: .normal)
        }
    
    }
    
    
    
    
}
