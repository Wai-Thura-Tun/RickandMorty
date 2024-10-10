//
//  TabBarVC.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/4/24.
//

import UIKit

class TabBarVC: UITabBarController {

    private var characterVC: CharacterVC {
        return CharacterVC.instantiate()
    }
    
    private var locationVC: LocationVC {
        return LocationVC.instantiate()
    }
    
    private var episodeVC: EpisodeVC {
        return EpisodeVC.instantiate()
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [
            characterVC,
            locationVC,
            episodeVC
        ]
        
        tabBar.isTranslucent = true
    }

}
