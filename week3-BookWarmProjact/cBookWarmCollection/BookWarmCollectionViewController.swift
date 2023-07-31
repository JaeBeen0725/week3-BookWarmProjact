//
//  BookWarmCollectionViewController.swift
//  week3-BookWarmProjact
//
//  Created by Jae Oh on 2023/07/31.
//

import UIKit


class BookWarmCollectionViewController: UICollectionViewController {

    let bookWarmArray = BookWarmArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let targetstoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let bookWarmDetailVeiwController = targetstoryboard.instantiateViewController(identifier: "BooWarmDetailViewController") as? BooWarmDetailViewController else {
             
            return showAlert()
        }
        
        navigationController?.pushViewController(bookWarmDetailVeiwController, animated: true)
        
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
    
    
    
    
}
