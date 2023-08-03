//
//  ViewController.swift
//  week3-BookWarmProjact
//
//  Created by Jae Oh on 2023/07/31.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var collectionViewTitleLabel: UILabel!
    @IBOutlet var tableViewTitleLabel: UILabel!
    
    @IBOutlet var lookAroundCollectionView: UICollectionView!
    @IBOutlet var lookAroundTableView: UITableView!
   
    let bookwarmarray = BookWarmArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lookAroundTableView.rowHeight = 190
        
        lookAroundCollectionView.delegate = self
        lookAroundCollectionView.dataSource = self
      
        lookAroundTableView.delegate = self
        lookAroundTableView.dataSource = self
        
        let cvnib = UINib(nibName: LookAroundCollectionViewCell.collectionViewIdentifire, bundle: nil)
        lookAroundCollectionView.register(cvnib, forCellWithReuseIdentifier: LookAroundCollectionViewCell.collectionViewIdentifire)
        
        let tv = UINib(nibName: LookAroundTableViewCell.lookAroundTableViewIdentifire, bundle: nil)
        lookAroundTableView.register(tv, forCellReuseIdentifier: LookAroundTableViewCell.lookAroundTableViewIdentifire)
        
        
    navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked)) 
    navigationItem.leftBarButtonItem?.tintColor = .black
        
        lookAroundCollectionViewLayout()
        collectionViewTitleLabel.text = "최근 본 작품"
        tableViewTitleLabel.text = "요즘 인기 작품"
}
    
@objc
    func closeButtonClicked() {
    dismiss(animated: true)
}
    
    func lookAroundCollectionViewLayout() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 100, height: 180)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
       
        lookAroundCollectionView.collectionViewLayout = layout
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        bookwarmarray.bookImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LookAroundCollectionViewCell.collectionViewIdentifire, for: indexPath) as! LookAroundCollectionViewCell
        
        cell.backgroundColor = .lightGray
        cell.lookAroundCollectionImage.image = bookwarmarray.bookImage[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
       let targetstoryboard = UIStoryboard(name: "Main", bundle: nil)
        guard targetstoryboard.instantiateViewController(identifier:  BooWarmDetailViewController.bookWarmDetailViewIdentifire) is BooWarmDetailViewController else {
            
           return showAlert3()
       }
       
       let storyboard = UIStoryboard(name: "Main", bundle: nil)
       let lookAroundcollectionView = storyboard.instantiateViewController(identifier: BooWarmDetailViewController.bookWarmDetailViewIdentifire) as! BooWarmDetailViewController
       
        lookAroundcollectionView.bookImage1 = bookwarmarray.bookImage[indexPath.row]
        lookAroundcollectionView.bookDate1 = bookwarmarray.bookDate[indexPath.row]
        lookAroundcollectionView.booktitle1 = bookwarmarray.bookTitle[indexPath.row]
       
        present(lookAroundcollectionView, animated: true)
      // navigationController?.pushViewController(lookAroundcollectionView, animated: true)
       
   }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        bookwarmarray.bookImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: LookAroundTableViewCell.lookAroundTableViewIdentifire, for: indexPath) as? LookAroundTableViewCell else {
           // return showAlert3()
           showAlert3()
            return UITableViewCell()
        }
        
        cell.lookAroundTableDateLabel.text = bookwarmarray.bookDate[indexPath.row]
        cell.lookAroundTableImageView.image = bookwarmarray.bookImage[indexPath.row]
        cell.lookAroundTableTitleLabel.text = bookwarmarray.bookTitle[indexPath.row]
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) -> Void {
        
        let targetstoryboard = UIStoryboard(name: "Main", bundle: nil)
        guard targetstoryboard.instantiateViewController(identifier: BooWarmDetailViewController.bookWarmDetailViewIdentifire) is BooWarmDetailViewController else {
             
            return showAlert3()
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let lookAroundTableView = storyboard.instantiateViewController(identifier: BooWarmDetailViewController.bookWarmDetailViewIdentifire) as! BooWarmDetailViewController
        
        lookAroundTableView.bookImage1 = bookwarmarray.bookImage[indexPath.row]
        lookAroundTableView.bookDate1 = bookwarmarray.bookDate[indexPath.row]
        lookAroundTableView.booktitle1 = bookwarmarray.bookTitle[indexPath.row]
        
        
        navigationController?.pushViewController(lookAroundTableView, animated: true)
    }
    
    
    
    
    
    
    
    
    
    
    
    
}

