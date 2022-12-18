//
//  Card.swift
//  Veryable Sample
//
//  Created by Kusch Qin on 12/18/22.
//  Copyright © 2022 Veryable Inc. All rights reserved.
//

import Foundation

struct Card {
    var name: String
    var detail: String
    var description: String
    
    init(name: String, detail: String, description: String) {
        self.name = name
        self.detail = detail
        self.description = description
    }
}
