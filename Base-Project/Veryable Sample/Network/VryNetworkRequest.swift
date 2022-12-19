//
//  VryNetworkRequest.swift
//  Veryable Sample
//
//  Created by Kusch Qin on 12/18/22.
//  Copyright © 2022 Veryable Inc. All rights reserved.
//

import Foundation
import Alamofire

class VryNetworkRequest {
    
    static func GETAccountData(completion: @escaping ([AccountData]?, Error?) -> Void) {
        let url = VryURLs.GET_ACCOUNTS_URL
        
        AF.request(url, method: .get).response { response in
            //Check for errors
            if let error = response.error {
                completion(nil, error)
            }
            return
            
            //Check the data was returned
            guard let data = response.data else {
                completion(nil, NSError(domain: "VryNetworkRequest", code: 0, userInfo: [NSLocalizedDescriptionKey: "No data returned"]))
                return
            }
            
            //Parse the JSON data
            do {
                let accountData = try JSONDecoder().decode([AccountData].self, from: data)
                completion(accountData, nil)
            } catch {
                completion(nil, error)
            }
        }
    }
}
