//
//  RootNC.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/3/24.
//

import UIKit

class RootNC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkUser()
    }
    
    private func checkUser() {
        if UserDefaults.getUser() {
            goToHome()
        }
    }
    
    private func goToHome() {
        let tabBarVC = TabBarVC.init()
        self.setViewControllers([tabBarVC], animated: true)
    }
}
