//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by YB on 3/25/24.
//

import UIKit

extension UIViewController {
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let gfAlertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            gfAlertVC.modalPresentationStyle = .overFullScreen
            gfAlertVC.modalTransitionStyle = .crossDissolve
            self.present(gfAlertVC, animated: true)
        }
    }
}
