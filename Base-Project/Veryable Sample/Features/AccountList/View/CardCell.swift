//
//  CardCell.swift
//  Veryable Sample
//
//  Created by Kusch Qin on 12/18/22.
//  Copyright © 2022 Veryable Inc. All rights reserved.
//

import Foundation
import UIKit

class CardCell: UICollectionViewCell {
    
    //MARK: Properties
    
    static let reuseIdentifier = "CardCell"
    var card: Card?
    
    private let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        let image = UIImage(named: "card")?.withRenderingMode(.alwaysTemplate)
        iv.image = image
        iv.tintColor = VBlue.normal.color
        return iv
    }()
    
    private let nameLabel = {
        let label = UILabel()
        label.font = UIFont.vryAvenirNextDemiBold(14)
        label.textColor = ViewColor.name.color
        return label
    }()
    
    private let descriptionLabel = {
        let label = UILabel()
        label.font = UIFont.vryAvenirNextRegular(12)
        label.textColor = ViewColor.name.color
        return label
    }()
    
    private let detailLabel = {
        let label = UILabel()
        label.font = UIFont.vryAvenirNextRegular(12)
        label.textColor = ViewColor.description.color
        label.alpha = 0.5
        return label
    }()
    
    private let border: UIView = {
        let view = UIView()
        view.layer.borderWidth = 0.2
        view.layer.borderColor = UIColor.black.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let arrow: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "arrow")
        iv.tintColor = VGrey.dark.color
        iv.alpha = 0.6
        return iv
    }()
    
    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("AccountCell - init(coder:) has not been implemented")
    }
    
    //MARK: Setup views
    
    private func commonInit() {
        setupViews()
        setupConstraints()
    }
    
    func configure(withCard: Card) {
        card = withCard
        nameLabel.text = card?.name
        descriptionLabel.text = card?.description
        detailLabel.text = card?.detail
    }
    
    private func setupViews() {
        contentView.backgroundColor = .white
        contentView.addSubview(nameLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(detailLabel)
        contentView.addSubview(imageView)
        contentView.addSubview(arrow)
        contentView.addSubview(border)
    }
    
    private func setupConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            imageView.widthAnchor.constraint(equalToConstant: 24),
            imageView.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            nameLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 16)
        ])
        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            descriptionLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 16)
        ])
        
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 4),
            detailLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 16)
        ])
        
        arrow.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            arrow.centerYAnchor.constraint(equalTo: centerYAnchor),
            arrow.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            arrow.widthAnchor.constraint(equalToConstant: 24),
            arrow.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        border.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            border.topAnchor.constraint(equalTo: contentView.topAnchor),
            border.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            border.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            border.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
