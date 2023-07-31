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
    
    
    func bookWarm(row: BookWarmValue) {
        var color: [UIColor] = [.red, .blue, .purple, .brown, .darkGray]
        backgroundColor = color.randomElement()
        layer.cornerRadius = 15
        
       layer.shadowColor = UIColor.black.cgColor
       layer.shadowOffset = .zero
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.5
        clipsToBounds = false
        
        
        bookDateLabel.text = row.date
        bookImageView.image = row.image
        bookImageView.contentMode = .scaleToFill
        bookTitleLabel.text = row.title
        
        
        
        
        
    }
    
    
    
}
