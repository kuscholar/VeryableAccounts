//
//  AccountListView.swift
//  Veryable Sample
//
//  Created by Isaac Sheets on 5/27/21.
//  Copyright © 2021 Veryable Inc. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

protocol AccountListDelegate: AnyObject {}

class AccountListView: UIView {
    
    static let accountCellId = "AccountCell"
    static let accountHeaderId = "HeaderView"

    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .gray
        collectionView.alwaysBounceVertical = true
        collectionView.register(AccountCell.self, forCellWithReuseIdentifier: accountCellId)
        collectionView.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: accountHeaderId)
        
        return collectionView
    }()
    
    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("AccountListView - init(coder:) has not been implemented")
    }
    
    
    private func setupViews() {
        
        addSubview(collectionView)
    }
    
    private func setupConstraints() {
        // set up constraints
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AccountListView.accountCellId, for: indexPath) as! AccountCell
        cell.backgroundColor = .yellow
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 100)
    }
    
    
//    //MARK: Public API
//
//    //MARK: Inits
//    init(delegate: AccountListDelegate) {
//        self.del = delegate
//        super.init(frame: .zero)
//        setup()
//    }
//    required init?(coder: NSCoder) { nil }
//
//    private func setup() {
//        backgroundColor = ViewColor.background.color
//
//        constrain()
//    }
//
//    private func constrain() {
//        helloLabel.snp.makeConstraints {
//            $0.center.equalTo(self)
//        }
//    }
//
//    //MARK: Overrides
//
//    //MARK: Private members
//    private weak var del: AccountListDelegate?
//
//    //MARK: Lazy Loads
//    private lazy var helloLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Hello, World!"
//        label.textColor = VGrey.dark.color
//        label.font = .vryAvenirNextDemiBold(16)
//        addSubview(label)
//        return label
//    }()
}
