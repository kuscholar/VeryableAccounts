//
//  AccountListViewController.swift
//  Veryable Sample
//
//  Created by Isaac Sheets on 5/27/21.
//  Copyright © 2021 Veryable Inc. All rights reserved.
//

import Foundation
import UIKit

class AccountListViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    //MARK: Public API


    
    
//    var accountListView: AccountListView {
//        return view as! AccountListView
//    }
    
    //MARK: Initialization
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 100)
        layout.headerReferenceSize = CGSize(width: UIScreen.main.bounds.width, height: 50)
        super.init(collectionViewLayout: layout)
//        accountListView.collectionView.dataSource = self
//        accountListView.collectionView.delegate = self
        if let navigationBar = self.navigationController?.navigationBar {
            navigationBar.titleTextAttributes = [.font: UIFont.vryAvenirNextRegular(12)]
        }
        title = "ACCOUNTS"
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

    }
    
    
    //MARK: Setup views
    private func setupView() {
        view.addSubview(collectionView)
        collectionView?.backgroundColor = .white
        collectionView?.register(AccountCell.self, forCellWithReuseIdentifier: "AccountCell")
        collectionView?.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "HeaderView")
    }

    
    
    
    
}

extension AccountListViewController {
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // First section is bank accounts, the other is cards
        //TODO: change hard coded numbers to accounts.count
        return section == 0 ? 6 : 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //Configure cells
        var cell: UICollectionViewCell!
        if indexPath.section == 0 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: AccountListView.accountCellId, for: indexPath) as! AccountCell
            cell.backgroundColor = .yellow
        } else {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: AccountListView.accountCellId, for: indexPath) as! AccountCell
            cell.backgroundColor = .green
        }
        
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        //Specify the size of the cells
//        return CGSize(width: collectionView.frame.width, height: 130)
//    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //Configure header view
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "HeaderView", for: indexPath) as! HeaderView
        if indexPath.section == 0 {
            headerView.titleLabel.text = "Bank Accounts"
        } else {
            headerView.titleLabel.text = "Cards"
        }
        return headerView
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        //Specify the size of the header view
//        return CGSize(width: collectionView.bounds.width, height: 80)
//    }
}

extension AccountListViewController: AccountListDelegate {

}
