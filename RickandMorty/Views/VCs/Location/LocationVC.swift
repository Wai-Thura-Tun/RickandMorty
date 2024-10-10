//
//  LocationVC.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/4/24.
//

import UIKit

class LocationVC: UIViewController, Storyboarded {

    static var storyboardName: String = "Main"
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        tabBarItem = UITabBarItem.init(
            title: "Location",
            image: .init(systemName: "globe"),
            tag: 1
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
