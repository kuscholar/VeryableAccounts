//
//  ViewColor.swift
//  Veryable
//
//  Created by Isaac Sheets on 10/11/20.
//  Copyright © 2020 Veryable, Inc. All rights reserved.
//

import Foundation
import UIKit

public enum ViewColor: VColor {
    case background, surface, name, description
    var color: UIColor {
        switch self {
            case .background: return UIColor(named: "Background")!
            case .surface: return UIColor(named: "Surface")!
            case .name:
                return UIColor(hex: "#4A4A4A")
            case .description:
                return UIColor(hex: "#7E7E7E")
        }
    }
}
