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
    
    private let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
//        iv.image = UIImage(named: "bank")
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let doneButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("DONE", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 3
        button.titleLabel?.font = UIFont.vryAvenirNextMedium(18)
        button.addTarget(self, action: #selector(didTapDoneButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configure()
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        if account != nil {
            imageView.image = UIImage(named: "bank")
        } else if card != nil {
            imageView.image = UIImage(named: "card")
        }
        view.addSubview(imageView)
        view.addSubview(nameLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(doneButton)
    }
    
    private func setupConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        doneButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            doneButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            doneButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            doneButton.heightAnchor.constraint(equalToConstant: 60),
            doneButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            doneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    private func configure() {
        // Configure title
        navigationController?.navigationBar.titleTextAttributes = [.font: UIFont.vryAvenirNextRegular(20)]
        title = "DETAILS"
        
        // Configure back button
        let backButtonImage = UIImage(named: "back_arrow")
        let backButton = UIBarButtonItem(image: backButtonImage, style: .plain, target: self, action: #selector(didTapBackButton))
        backButton.tintColor = .black
        backButton.customView?.translatesAutoresizingMaskIntoConstraints = false
        navigationItem.leftBarButtonItem = backButton
        backButton.customView?.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        
        // Configure label texts
        if let account = account {
            nameLabel.text = "\(account.name)"
            descriptionLabel.text = "\(account.description)"
        } else if let card = card {
            nameLabel.text = "\(card.name)"
            descriptionLabel.text = "\(card.description)"
        }
    }
    
    @objc func didTapBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func didTapDoneButton() {
        navigationController?.popViewController(animated: true)
    }
}
