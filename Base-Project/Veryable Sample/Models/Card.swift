//
//  Card.swift
//  Veryable Sample
//
//  Created by Kusch Qin on 12/18/22.
//  Copyright © 2022 Veryable Inc. All rights reserved.
//

import Foundation

struct Card {
    let id: Int
    let type: String
    let name: String
    let description: String
    let detail: String
    
    init(data: AccountData) {
        self.id = data.id
        self.type = data.accountType
        self.name = data.accountName
        self.description = data.description
        self.detail = "Card: Instant"
    }
}
