//
//  AccountData.swift
//  Veryable Sample
//
//  Created by Kusch Qin on 12/18/22.
//  Copyright © 2022 Veryable Inc. All rights reserved.
//

import Foundation

struct AccountData: Decodable {
//    var account: Account?
//    var card: Card?
//
//    init(account: Account? = nil, card: Card? = nil) {
//        self.account = account
//        self.card = card
//    }
    let id: Int
    let accountType: String
    let accountName: String
    let description: String
    
    // Implement the required initializer
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.accountType = try container.decode(String.self, forKey: .accountType)
        self.accountName = try container.decode(String.self, forKey: .accountName)
        self.description = try container.decode(String.self, forKey: .description)
    }
    
    //Define the coding keys
    enum CodingKeys: String, CodingKey {
        case id
        case accountType = "account_type"
        case accountName = "account_name"
        case description = "desc"
    }
}
