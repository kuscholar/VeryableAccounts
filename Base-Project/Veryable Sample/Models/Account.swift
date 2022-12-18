//
//  Account.swift
//  Veryable Sample
//
//  Created by Isaac Sheets on 5/27/21.
//  Copyright © 2021 Veryable Inc. All rights reserved.
//

import Foundation

struct Account {
    var name: String
    var detail: String
    var description: String
    
    init(name: String, detail: String, description: String) {
        self.name = name
        self.detail = detail
        self.description = description
    }
}