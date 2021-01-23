//
//  GameViewController.swift
//  ButterCheeseEggs
//
//  Created by Kamaal M Farah on 23/01/2021.
//

import UIKit

class GameViewController: UIViewController {

    var gameGridModel = GameGridModel()
    var gameModel = GameModel()

    lazy var gameButton00: UIButton = {
        let button = AppButtons.gameButton()
        button.tag = gameGridModel.gameGrid[0][0].tag
        button.addTarget(self, action: #selector(onGameButtonTap), for: .touchUpInside)
        return button
    }()
    lazy var gameButton01: UIButton = {
        let button = AppButtons.gameButton()
        button.tag = gameGridModel.gameGrid[0][1].tag
        button.addTarget(self, action: #selector(onGameButtonTap), for: .touchUpInside)
        return button
    }()
    lazy var gameButton02: UIButton = {
        let button = AppButtons.gameButton()
        button.tag = gameGridModel.gameGrid[0][2].tag
        button.addTarget(self, action: #selector(onGameButtonTap), for: .touchUpInside)
        return button
    }()
    lazy var gameButton10: UIButton = {
        let button = AppButtons.gameButton()
        button.tag = gameGridModel.gameGrid[1][0].tag
        button.addTarget(self, action: #selector(onGameButtonTap), for: .touchUpInside)
        return button
    }()
    lazy var gameButton11: UIButton = {
        let button = AppButtons.gameButton()
        button.tag = gameGridModel.gameGrid[1][1].tag
        button.addTarget(self, action: #selector(onGameButtonTap), for: .touchUpInside)
        return button
    }()
    lazy var gameButton12: UIButton = {
        let button = AppButtons.gameButton()
        button.tag = gameGridModel.gameGrid[1][2].tag
        button.addTarget(self, action: #selector(onGameButtonTap), for: .touchUpInside)
        return button
    }()
    lazy var gameButton20: UIButton = {
        let button = AppButtons.gameButton()
        button.tag = gameGridModel.gameGrid[2][0].tag
        button.addTarget(self, action: #selector(onGameButtonTap), for: .touchUpInside)
        return button
    }()
    lazy var gameButton21: UIButton = {
        let button = AppButtons.gameButton()
        button.tag = gameGridModel.gameGrid[2][1].tag
        button.addTarget(self, action: #selector(onGameButtonTap), for: .touchUpInside)
        return button
    }()
    lazy var gameButton22: UIButton = {
        let button = AppButtons.gameButton()
        button.tag = gameGridModel.gameGrid[2][2].tag
        button.addTarget(self, action: #selector(onGameButtonTap), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        self.title = "Game"
        self.navigationItem.largeTitleDisplayMode = .never
        self.view.backgroundColor = .systemBackground

        self.view.addSubview(gameButton00)
        self.view.addSubview(gameButton01)
        self.view.addSubview(gameButton02)
        self.view.addSubview(gameButton10)
        self.view.addSubview(gameButton11)
        self.view.addSubview(gameButton12)
        self.view.addSubview(gameButton20)
        self.view.addSubview(gameButton21)
        self.view.addSubview(gameButton22)

        setupConstraints()
    }

    private func setupConstraints() {
        let safeAreaLayoutGuide = self.view.safeAreaLayoutGuide
        let safeAreaCenterXAnchor = safeAreaLayoutGuide.centerXAnchor
        let safeAreaTopAnchor = safeAreaLayoutGuide.topAnchor
        let screenSize = UIScreen.main.bounds.size
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height

        NSLayoutConstraint.activate([
            gameButton00.topAnchor.constraint(equalTo: safeAreaTopAnchor, constant: screenHeight / 3 / 2),
            gameButton00.trailingAnchor.constraint(equalTo: gameButton01.leadingAnchor),
            gameButton00.widthAnchor.constraint(equalToConstant: screenWidth / 4),
            gameButton00.heightAnchor.constraint(equalToConstant: screenWidth / 4),

            gameButton01.topAnchor.constraint(equalTo: safeAreaTopAnchor, constant: screenHeight / 3 / 2),
            gameButton01.centerXAnchor.constraint(equalTo: safeAreaCenterXAnchor),
            gameButton01.widthAnchor.constraint(equalToConstant: screenWidth / 4),
            gameButton01.heightAnchor.constraint(equalToConstant: screenWidth / 4),

            gameButton02.leadingAnchor.constraint(equalTo: gameButton01.trailingAnchor),
            gameButton02.topAnchor.constraint(equalTo: safeAreaTopAnchor, constant: screenHeight / 3 / 2),
            gameButton02.widthAnchor.constraint(equalToConstant: screenWidth / 4),
            gameButton02.heightAnchor.constraint(equalToConstant: screenWidth / 4),

            gameButton10.topAnchor.constraint(equalTo: gameButton00.bottomAnchor),
            gameButton10.trailingAnchor.constraint(equalTo: gameButton11.leadingAnchor),
            gameButton10.widthAnchor.constraint(equalToConstant: screenWidth / 4),
            gameButton10.heightAnchor.constraint(equalToConstant: screenWidth / 4),

            gameButton11.topAnchor.constraint(equalTo: gameButton01.bottomAnchor),
            gameButton11.centerXAnchor.constraint(equalTo: safeAreaCenterXAnchor),
            gameButton11.widthAnchor.constraint(equalToConstant: screenWidth / 4),
            gameButton11.heightAnchor.constraint(equalToConstant: screenWidth / 4),

            gameButton12.leadingAnchor.constraint(equalTo: gameButton11.trailingAnchor),
            gameButton12.topAnchor.constraint(equalTo: gameButton02.bottomAnchor),
            gameButton12.widthAnchor.constraint(equalToConstant: screenWidth / 4),
            gameButton12.heightAnchor.constraint(equalToConstant: screenWidth / 4),

            gameButton20.trailingAnchor.constraint(equalTo: gameButton21.leadingAnchor),
            gameButton20.topAnchor.constraint(equalTo: gameButton10.bottomAnchor),
            gameButton20.widthAnchor.constraint(equalToConstant: screenWidth / 4),
            gameButton20.heightAnchor.constraint(equalToConstant: screenWidth / 4),

            gameButton21.topAnchor.constraint(equalTo: gameButton11.bottomAnchor),
            gameButton21.centerXAnchor.constraint(equalTo: safeAreaCenterXAnchor),
            gameButton21.widthAnchor.constraint(equalToConstant: screenWidth / 4),
            gameButton21.heightAnchor.constraint(equalToConstant: screenWidth / 4),
        
            gameButton22.leadingAnchor.constraint(equalTo: gameButton21.trailingAnchor),
            gameButton22.topAnchor.constraint(equalTo: gameButton12.bottomAnchor),
            gameButton22.widthAnchor.constraint(equalToConstant: screenWidth / 4),
            gameButton22.heightAnchor.constraint(equalToConstant: screenWidth / 4),
        ])
    }

    @objc
    private func onGameButtonTap(_ sender: UIButton) {
        guard gameGridModel.modifyGridItemPlayer(tag: sender.tag, player: gameModel.player) else { return }
        sender.setTitle(nil, for: .normal)
        let imageDimension = UIScreen.main.bounds.size.width / 5
        if gameModel.player == .crosses {
            let image = UIImage(systemName: "multiply")?.resizeImage(imageDimension, opaque: false)
            sender.setImage(image, for: .normal)
            sender.tintColor = .red
        } else {
            let image = UIImage(systemName: "circle")?.resizeImage(imageDimension, opaque: false)
            sender.setImage(image, for: .normal)
            sender.tintColor = .green
        }
        guard let playerToggled = gameModel.player.toggled else { return }
        gameModel.player = playerToggled
    }

}

#if DEBUG
import SwiftUI

struct GameViewController_Previews: PreviewProvider {
    static var previews: some View {
        UINavigationController(rootViewController: GameViewController()).toPreview()
            .edgesIgnoringSafeArea(.all)
    }
}
#endif
