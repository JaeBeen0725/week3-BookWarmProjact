//
//  BookWarmCollectionViewController.swift
//  week3-BookWarmProjact
//
//  Created by Jae Oh on 2023/07/31.
//

import UIKit


class BookWarmCollectionViewController: UICollectionViewController {
    
    @IBOutlet var searchButton: UIBarButtonItem!
    @IBOutlet var tableViewButton: UIBarButtonItem!
  
    var bookWarmArray = BookWarmArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchButton.image = UIImage(systemName: "magnifyingglass")
        tableViewButton.image = UIImage(systemName: "book.closed")
         
        let nib = UINib(nibName: BookWarmCollectionViewCell.bookWarmIdentifire, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: BookWarmCollectionViewCell.bookWarmIdentifire)
        cvLayout()
    }
    
    
    func cvLayout()  {
        
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 15
        let width = UIScreen.main.bounds.width - (spacing * 4)
        layout.itemSize = CGSize(width: width / 2, height: width / 2)
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout
    
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookWarmArray.bookWarmArray.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BookWarmCollectionViewCell.bookWarmIdentifire, for: indexPath) as? BookWarmCollectionViewCell else {
            return UICollectionViewCell()
        }
        let row = bookWarmArray.bookWarmArray[indexPath.row]

        cell.bookWarm(row: row)
        cell.likeButton.tag = indexPath.row
        cell.likeButton.addTarget(self, action: #selector(likeButtontapped), for: .touchUpInside)
        
        
        return cell
    }
    
    @objc
    func likeButtontapped(_ sender: UIButton) {
        bookWarmArray.bookWarmArray[sender.tag].like.toggle()
        print(likeButtontapped)
        collectionView.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let targetstoryboard = UIStoryboard(name: "Main", bundle: nil)
        guard targetstoryboard.instantiateViewController(identifier: "BooWarmDetailViewController") is BooWarmDetailViewController else {
             
            return showAlert()
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let collectionVioew = storyboard.instantiateViewController(identifier: "BooWarmDetailViewController") as! BooWarmDetailViewController
        
        collectionVioew.bookImage1 = bookWarmArray.bookImage[indexPath.row]
        collectionVioew.bookDate1 = bookWarmArray.bookDate[indexPath.row]
        collectionVioew.booktitle1 = bookWarmArray.bookTitle[indexPath.row]
        
        
        navigationController?.pushViewController(collectionVioew, animated: true)
        
    }
    
    
    @IBAction func searchButtonClicked(_ sender: UIBarButtonItem) {
        
        let searchstoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let searchViewcontroller = searchstoryboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController else {
            
            return showAlert()
        }
        
        let nav = UINavigationController(rootViewController: searchViewcontroller)
        
       nav.modalPresentationStyle = .fullScreen
        
        present(nav, animated: true)
        
    }
    
    @IBAction func backButtonClicked(_ sender: UIBarButtonItem) {
        let searchTableviewStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let searchTableViewController = searchTableviewStoryboard.instantiateViewController(identifier: "BookWarmTableViewController") as? BookWarmTableViewController else {
            return showAlert()
        }
        
        let nav = UINavigationController(rootViewController: searchTableViewController)
        
        nav.modalPresentationStyle = .overFullScreen
        
        present(nav, animated: true)
        
    }
    
 
    
    
    
    
}
