//
//  AccountCell.swift
//  Veryable Sample
//
//  Created by Kusch Qin on 12/17/22.
//  Copyright © 2022 Veryable Inc. All rights reserved.
//

import Foundation
import UIKit

class AccountCell: UICollectionViewCell {
    
    //MARK: Properties
    
    static let reuseIdentifier = "AccountCell"
    private let nameLabel = {
        let label = UILabel()
        label.font = UIFont.vryAvenirNextDemiBold(14)
        label.textColor = .darkText
        return label
    }()
    
    private let detailLabel = {
        let label = UILabel()
        label.font = UIFont.vryAvenirNextRegular(12)
        label.textColor = .gray
        return label
    }()
    
    private let descriptionLabel = {
        let label = UILabel()
        label.font = UIFont.vryAvenirNextRegular(12)
        label.textColor = .darkText
        label.alpha = 0.5
        return label
    }()
    
    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("AccountCell - init(coder:) has not been implemented")
    }
    
    //MARK: Setup views
    
    private func commonInit() {
        setupViews()
        setupConstraints()
    }
    
    private func configure() {
        
    }
    
    private func setupViews() {
        contentView.addSubview(nameLabel)
        contentView.addSubview(detailLabel)
        contentView.addSubview(descriptionLabel)
    }
    
    private func setupConstraints() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
        
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            detailLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            detailLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }
}
