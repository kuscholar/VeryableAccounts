//
//  AccountDetailsViewController.swift
//  Veryable Sample
//
//  Created by Kusch Qin on 12/18/22.
//  Copyright © 2022 Veryable Inc. All rights reserved.
//

import Foundation
import UIKit

class AccountDetailsViewController: UIViewController {
    var account: Account?
    var card: Card?
    var imageView: UIImageView?
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.titleTextAttributes = [.font: UIFont.vryAvenirNextRegular(20)]
        title = "DETAILS"
        if let account = account {
            nameLabel.text = "\(account.name)"
            detailLabel.text = "\(account.detail)"
        } else if let card = card {
            nameLabel.text = "\(card.name)"
            detailLabel.text = "\(card.detail)"
        }
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(nameLabel)
        view.addSubview(detailLabel)
    }
    
    private func setupConstraints() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            detailLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
