//
//  SplashVC.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/3/24.
//

import UIKit
import RxCocoa
import RxSwift

class SplashVC: UIViewController {

    @IBOutlet weak var btnGetStarted: UIButton!
    
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpBindings()
    }

    private func setUpBindings() {
        btnGetStarted.rx.tap
            .throttle(.milliseconds(500), scheduler: MainScheduler.instance)
            .subscribe(onNext: { [weak self] in
                UserDefaults.setUser()
                self?.goToHome()
            })
            .disposed(by: disposeBag)
    }
    
    private func goToHome() {
        let tabBarVC = TabBarVC.init()
        self.navigationController?.setViewControllers([tabBarVC], animated: true)
    }
    
    deinit {
        print("Deallocated SpashVC")
    }
}
