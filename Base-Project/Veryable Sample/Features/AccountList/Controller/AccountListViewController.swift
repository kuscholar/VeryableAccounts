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

    //MARK: Temp fake data
    let accounts = [
        Account(name: "WF Checking Account", detail: "Wells (x2071)", description: "Same Day"),
        Account(name: "WF Savings Account", detail: "Wells (x4578)", description: "Same Day"),
        Account(name: "WF Checking Account", detail: "Wells (x2347)", description: "Same Day")
    ]
    
    let cards = [
        Card(name: "WF Debit", detail: "VISA (x1238)", description: "Instant"),
        Card(name: "Chase Credit", detail: "Master (x1239)", description: "Instant"),
        Card(name: "Chase Credit", detail: "Master (x1231)", description: "Instant")
    ]
    
    //MARK: Initialization
    
    let accountSection = 0
    let cardSection = 1
    let accountCellId = "AccountCell"
    let cardCellId = "CardCell"
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
        collectionView?.register(AccountCell.self, forCellWithReuseIdentifier: accountCellId)
        collectionView?.register(CardCell.self, forCellWithReuseIdentifier: cardCellId)
        collectionView?.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "HeaderView")
    }

    
    
    
    
}

extension AccountListViewController {
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        if accounts.count != 0 && cards.count != 0 {
            return 2
        } else if accounts.count == 0 && cards.count == 0 {
            return 0
        }
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // First section is bank accounts, the other is cards
        //TODO: change hard coded numbers to accounts.count
        return section == accountSection ? accounts.count : cards.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //Configure cells
        if indexPath.section == accountSection {
            var cell: AccountCell!
            let account = accounts[indexPath.item]
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: accountCellId, for: indexPath) as? AccountCell
            cell.backgroundColor = .yellow
            cell.configure(withAccount: account)
            return cell
        } else {
            var cell: CardCell!
            let card = cards[indexPath.item]
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: cardCellId, for: indexPath) as? CardCell
            cell.backgroundColor = .green
            cell.configure(withCard: card)
            return cell
        }
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //Configure header view
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "HeaderView", for: indexPath) as! HeaderView
        if indexPath.section == accountSection {
            headerView.titleLabel.text = "Bank Accounts"
        } else {
            headerView.titleLabel.text = "Cards"
        }
        return headerView
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let accountDetailsVC = AccountDetailsViewController()
        if indexPath.section == cardSection {
            let account = accounts[indexPath.item]
            accountDetailsVC.account = account
        } else {
            let card = cards[indexPath.item]
            accountDetailsVC.card = card
        }
        navigationController?.pushViewController(accountDetailsVC, animated: true)
    }
}

extension AccountListViewController: AccountListDelegate {

}
