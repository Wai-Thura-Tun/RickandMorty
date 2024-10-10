//
//  CharacterVC.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/4/24.
//

import UIKit
import RxSwift

class CharacterVC: UIViewController, Storyboarded {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var cvCharacter: UICollectionView!
    
    static var storyboardName: String = "Main"
    
    private let vm: CharacterVM = .init()
    
    private var dataSource: UICollectionViewDiffableDataSource<Int, CharacterVO>!
    
    private let cvIdentifier: String = String(
        describing: CharacterCell.self
    )
    
    private let disposeBag = DisposeBag()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        tabBarItem = UITabBarItem.init(
            title: "Character",
            image: .init(systemName: "person"),
            tag: 0
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpViews()
        createLayout()
        setUpDataSource()
        setUpBindings()
        vm.getCharacters()
    }
    
    private func setUpViews() {
        lblTitle.font = .popB24
        cvCharacter.registerCell(CharacterCell.self)
    }
    
    private func setUpBindings() {
        vm.characters.observe(on: MainScheduler.instance)
            .subscribe(onNext: { [weak self] characters in
                self?.applySnapShot(characters: characters)
            })
            .disposed(by: disposeBag)
        
        vm.error
            .observe(on: MainScheduler.instance)
            .subscribe(onNext: { [weak self] errorMessage in
                self?.showAlert(title: "Error", message: errorMessage)
            })
            .disposed(by: disposeBag)
    }

    private func setUpDataSource() {
        dataSource = UICollectionViewDiffableDataSource(collectionView: self.cvCharacter) { collectionView, indexPath, character in
            let cell = collectionView.dequeueCell(CharacterCell.self, for: indexPath)
            let cellVM = CharacterCellVM(character: character)
            cell.vm = cellVM
            return cell
        }
    }
    
    private func applySnapShot(characters: [CharacterVO]) {
        var snapshot = NSDiffableDataSourceSnapshot<Int, CharacterVO>()
        snapshot.appendSections([0])
        snapshot.appendItems(characters, toSection: 0)
        dataSource.apply(snapshot, animatingDifferences: true)
    }
    
    private func createLayout() {
        let items = NSCollectionVi
    }
}
