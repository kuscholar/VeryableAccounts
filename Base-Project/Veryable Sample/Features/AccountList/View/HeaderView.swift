//
//  HeaderView.swift
//  Veryable Sample
//
//  Created by Kusch Qin on 12/17/22.
//  Copyright © 2022 Veryable Inc. All rights reserved.
//

import Foundation
import UIKit

class HeaderView: UICollectionReusableView {
    //MARK: Properties
    
    static let reuseIdentifier = "HeaderView"
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.vryAvenirNextBold(15)
        label.textColor = .black
        return label
    }()
    
    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("HeaderView - init(coder:) has not been implemented")
    }
    
    //MARK: Setup header view
    private func commonInit() {
        // Set up the header view's appearance
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        backgroundColor = .gray
        addSubview(titleLabel)
    }
    
    private func setupConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8)
        ])
    }
    
    
    //MARK: Configuration
    func configure(with title: String) {
        
    }
}
