//
//  GameModelController.swift
//  ButterCheeseEggs
//
//  Created by Kamaal M Farah on 23/01/2021.
//

import Foundation

class GameModelController {
    private(set) var player: Players = .crosses

    var currentPlayer: Players {
        player
    }

    func togglePlayer() {
        guard let toggledPlayer = player.toggled else { return }
        player = toggledPlayer
    }
}
