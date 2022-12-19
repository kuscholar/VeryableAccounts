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
        label.textColor = ViewColor.name.color
        return label
    }()
    
    private let border: UIView = {
        let view = UIView()
        view.layer.borderWidth = 0.3
        view.layer.borderColor = UIColor.black.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        backgroundColor = ViewColor.background.color
        addSubview(titleLabel)
        addSubview(border)
    }
    
    private func setupConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16)
        ])
        
        border.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            border.topAnchor.constraint(equalTo: superview!.topAnchor),
//            border.leadingAnchor.constraint(equalTo: superview!.leadingAnchor),
//            border.trailingAnchor.constraint(equalTo: superview!.trailingAnchor),
//            border.bottomAnchor.constraint(equalTo: superview!.bottomAnchor)
//        ])
    }
    
    
    //MARK: Configuration
    func configure(with title: String) {
        
    }
}
