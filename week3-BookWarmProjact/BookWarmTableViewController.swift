//
//  BookWarmTableViewController.swift
//  week3-BookWarmProjact
//
//  Created by Jae Oh on 2023/07/31.
//

import UIKit

class BookWarmTableViewController: UITableViewController {
    var bookWarmTableView = BookWarmTableViewArray()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let nib = UINib(nibName: BookWarmTableViewCell.bookWarmTableViewCellIdentiFire, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: BookWarmTableViewCell.bookWarmTableViewCellIdentiFire)
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.backward"), style: .plain, target: self, action: #selector(backButtonClick))
        
    }
    
    @objc
    func backButtonClick() {
        dismiss(animated: true)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return bookWarmTableView.bookWarmTableViewArray.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: BookWarmTableViewCell.bookWarmTableViewCellIdentiFire, for: indexPath) as! BookWarmTableViewCell
    
        
        return cell
        
    }
   
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        bookWarmTableView.bookWarmTableViewArray.remove(at: indexPath.row)
        tableView.reloadData()
        
    }

}
