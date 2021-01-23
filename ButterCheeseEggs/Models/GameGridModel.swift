//
//  GameGridModel.swift
//  ButterCheeseEggs
//
//  Created by Kamaal M Farah on 23/01/2021.
//

import Foundation

class GameGridModel {

    var gameGrid: [[GameGridItemModel]]

    init() {
        self.gameGrid = [
            [GameGridItemModel(tag: 0, row: 0, column: 0), GameGridItemModel(tag: 1, row: 0, column: 1), GameGridItemModel(tag: 2, row: 0, column: 2)],
            [GameGridItemModel(tag: 10, row: 1, column: 0), GameGridItemModel(tag: 11, row: 1, column: 1), GameGridItemModel(tag: 12, row: 1, column: 2)],
            [GameGridItemModel(tag: 20, row: 2, column: 0), GameGridItemModel(tag: 21, row: 2, column: 1), GameGridItemModel(tag: 22, row: 2, column: 2)]
        ]
    }

    func modifyGridItem(tag: Int, player: Players) -> Bool {
        guard let gridItem = findGridItem(withTag: tag), gridItem.player == nil else { return false }
        let row = gridItem.row
        let column = gridItem.column
        self.gameGrid[row][column] = GameGridItemModel(tag: tag, row: row, column: column, player: player)
        return true
    }

    private func findGridItem(withTag tag: Int) -> GameGridItemModel? {
        let gridItem: GameGridItemModel?
        if tag < 3 {
            gridItem = gameGrid[0].first { $0.tag == tag }
        } else if tag < 13 {
            gridItem = gameGrid[1].first { $0.tag == tag }
        } else {
            gridItem = gameGrid[2].first { $0.tag == tag }
        }
        return gridItem
    }

}
