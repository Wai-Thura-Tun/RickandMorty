//
//  EpisodeVC.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/4/24.
//

import UIKit

class EpisodeVC: UIViewController, Storyboarded {

    static var storyboardName:String = "Main"
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        tabBarItem = UITabBarItem.init(
            title: "Episode",
            image: .init(systemName: "tv"),
            tag: 2
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
