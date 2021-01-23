//
//  Players.swift
//  ButterCheeseEggs
//
//  Created by Kamaal M Farah on 23/01/2021.
//

import Foundation

enum Players {
    case noughts
    case crosses
}

extension Players {
    var toggled: Players? {
        if self == .crosses {
            return .noughts
        } else if self == .noughts {
            return .crosses
        } else {
            return nil
        }
    }
}
