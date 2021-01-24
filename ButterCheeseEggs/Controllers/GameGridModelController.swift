//
//  GameGridModelController.swift
//  ButterCheeseEggs
//
//  Created by Kamaal M Farah on 23/01/2021.
//

import Foundation

class GameGridModelController {

    private(set) var gameGridModel: [[GameGridItemModel]]

    init() {
        self.gameGridModel = [
            [GameGridItemModel(tag: 0, row: 0, column: 0), GameGridItemModel(tag: 1, row: 0, column: 1), GameGridItemModel(tag: 2, row: 0, column: 2)],
            [GameGridItemModel(tag: 10, row: 1, column: 0), GameGridItemModel(tag: 11, row: 1, column: 1), GameGridItemModel(tag: 12, row: 1, column: 2)],
            [GameGridItemModel(tag: 20, row: 2, column: 0), GameGridItemModel(tag: 21, row: 2, column: 1), GameGridItemModel(tag: 22, row: 2, column: 2)]
        ]
    }

    func getGrid(row: Int, column: Int) -> GameGridItemModel {
        gameGridModel[row][column]
    }

    func modifyGridItem(row: Int, column: Int, player: Players) -> Bool {
        let gridItem = getGrid(row: row, column: column)
        guard gridItem.player == nil else { return false }
        let row = gridItem.row
        let column = gridItem.column
        self.gameGridModel[row][column] = GameGridItemModel(tag: gridItem.tag, row: row, column: column, player: player)
        return true
    }

    func findGridItem(withTag tag: Int) -> GameGridItemModel? {
        let gridItem: GameGridItemModel?
        if tag < 3 {
            gridItem = gameGridModel[0].first { $0.tag == tag }
        } else if tag < 13 {
            gridItem = gameGridModel[1].first { $0.tag == tag }
        } else {
            gridItem = gameGridModel[2].first { $0.tag == tag }
        }
        return gridItem
    }

}
