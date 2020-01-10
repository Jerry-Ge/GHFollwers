//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Yuzhou Ge on 1/9/20.
//  Copyright © 2020 haodan. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {

    var username: String! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { (followers, errorMessage) in
            guard let followers = followers else {
                self.presentGFAlertOnMainThread(title: "Bad Stuff Happened", message: errorMessage!.rawValue, buttonTitle: "Ok")
                return
            }
            print("Follwers.count = \(followers.count)")
            print(followers)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
