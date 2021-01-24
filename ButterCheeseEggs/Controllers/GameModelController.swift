//
//  GameModelController.swift
//  ButterCheeseEggs
//
//  Created by Kamaal M Farah on 23/01/2021.
//

import Foundation

class GameModelController {

    private(set) var player: Players = .crosses
    private(set) var plays: [[Players?]]
    private(set) var gameWon = false

    init() {
        self.plays = [
            [nil, nil, nil],
            [nil, nil, nil],
            [nil, nil, nil]
        ]
    }

    func evaluateMove(row: Int, column: Int) -> Bool {
        guard !gameWon else { return true }
        plays[row][column] = player
        for (index, winningPlaysRows) in plays.enumerated() {
            if winningPlaysRows.allSatisfy({ $0 == player }) {
                gameWon = true
                return true
            }
            let winningColumnPlays = (0..<plays.count).map { plays[$0][index] }
            if winningColumnPlays.allSatisfy({ $0 == player }) {
                gameWon = true
                return true
            }
        }
        if (0..<plays.count).map({ plays[$0][$0] }).allSatisfy({ $0 == player }) {
            gameWon = true
            return true
        }
        if (0..<plays.count).map({ (number: Int) -> Players? in plays[plays.count - (number + 1)][number] })
            .allSatisfy({ $0 == player }) {
            gameWon = true
            return true
        }
        togglePlayer()
        return false
    }

    private func getColumnPlays(of column: Int) -> [Players?] {
        return [plays[0][column], plays[1][column], plays[2][column]]
    }

    private func togglePlayer() {
        guard let toggledPlayer = player.toggled else { return }
        player = toggledPlayer
    }

}
