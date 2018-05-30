//
//  MainViewController.swift
//  Music
//
//  Created by guest on 2018/05/30.
//  Copyright © 2018年 guest. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray // to visually distinguish the protected part
        title = "Main Screen"
        let logoutButton = UIBarButtonItem(title: "Log Out", style: .plain, target: self, action: #selector(logout))
        navigationItem.setLeftBarButton(logoutButton, animated: true)
    }
    @objc
    private func logout() {
        // clear the user session (example only, not for the production)
        UserDefaults.standard.set(false, forKey: "LOGGED_IN")
        // navigate to the Main Screen
         AppDelegate.shared.rootViewController.switchToLogout()
    }
}
