//
//  Account.swift
//  Veryable Sample
//
//  Created by Isaac Sheets on 5/27/21.
//  Copyright © 2021 Veryable Inc. All rights reserved.
//

import Foundation

struct Account {
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
        self.detail = "Bank Account: ACH - Same Day"
    }
}
