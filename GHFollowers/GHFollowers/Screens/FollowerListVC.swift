//
//  FollowersListVC.swift
//  GHFollowers
//
//  Created by YB on 3/18/24.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Refactored to complete network call with Result type
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            switch result {
            case .success(let followers):
                let followers = followers
                print("followers.count = \(followers.count)")
                print("followers = \(followers)")
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Something Bad Happened", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
