//
//  wdw.swift
//  week3-BookWarmProjact
//
//  Created by Jae Oh on 2023/07/31.
//

import Foundation
import UIKit

extension UICollectionViewController {
    
    func showAlert() {
        let alert = UIAlertController(title: "오류", message: "관리자에게 문의하세요", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "확인", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
}

extension UITableViewController {
    
    func showAlertt() {
        let alert = UIAlertController(title: "오류", message: "관리자에게 문의하세요", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "확인", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
}



extension ViewController {
    
    func showAlert() {
        let alert = UIAlertController(title: "오류", message: "관리자에게 문의하세요", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "확인", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
   
}
