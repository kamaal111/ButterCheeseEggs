//
//  GameViewController.swift
//  ButterCheeseEggs
//
//  Created by Kamaal M Farah on 23/01/2021.
//

import UIKit

class GameViewController: UIViewController {

    lazy var gameButton00: UIButton = {
        AppButtons.ordinaryButton(title: "00")
    }()
    lazy var gameButton01: UIButton = {
        AppButtons.ordinaryButton(title: "01")
    }()
    lazy var gameButton02: UIButton = {
        AppButtons.ordinaryButton(title: "02")
    }()
    lazy var gameButton10: UIButton = {
        AppButtons.ordinaryButton(title: "10")
    }()
    lazy var gameButton11: UIButton = {
        AppButtons.ordinaryButton(title: "11")
    }()
    lazy var gameButton12: UIButton = {
        AppButtons.ordinaryButton(title: "12")
    }()
    lazy var gameButton20: UIButton = {
        AppButtons.ordinaryButton(title: "20")
    }()
    lazy var gameButton21: UIButton = {
        AppButtons.ordinaryButton(title: "21")
    }()
    lazy var gameButton22: UIButton = {
        AppButtons.ordinaryButton(title: "22")
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        self.title = "Game"
        self.navigationItem.largeTitleDisplayMode = .never

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
        let leadingAnchor = self.view.leadingAnchor
        let trailingAnchor = self.view.trailingAnchor
        let screenSize = UIScreen.main.bounds.size
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height

        NSLayoutConstraint.activate([
            gameButton00.leadingAnchor.constraint(equalTo: leadingAnchor, constant: screenWidth / 3 / 2),
            gameButton00.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: screenHeight / 3 / 2),

            gameButton01.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: screenHeight / 3 / 2),
            gameButton01.centerXAnchor.constraint(equalTo: safeAreaCenterXAnchor),

            gameButton02.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -screenWidth / 3 / 2),
            gameButton02.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: screenHeight / 3 / 2),

            gameButton10.leadingAnchor.constraint(equalTo: leadingAnchor, constant: screenWidth / 3 / 2),
            gameButton10.topAnchor.constraint(equalTo: gameButton00.topAnchor, constant: screenHeight / 3 / 2),

            gameButton11.topAnchor.constraint(equalTo: gameButton01.topAnchor, constant: screenHeight / 3 / 2),
            gameButton11.centerXAnchor.constraint(equalTo: safeAreaCenterXAnchor),

            gameButton12.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -screenWidth / 3 / 2),
            gameButton12.topAnchor.constraint(equalTo: gameButton02.topAnchor, constant: screenHeight / 3 / 2),

            gameButton20.leadingAnchor.constraint(equalTo: leadingAnchor, constant: screenWidth / 3 / 2),
            gameButton20.topAnchor.constraint(equalTo: gameButton10.topAnchor, constant: screenHeight / 3 / 2),

            gameButton21.topAnchor.constraint(equalTo: gameButton11.topAnchor, constant: screenHeight / 3 / 2),
            gameButton21.centerXAnchor.constraint(equalTo: safeAreaCenterXAnchor),
        
            gameButton22.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -screenWidth / 3 / 2),
            gameButton22.topAnchor.constraint(equalTo: gameButton12.topAnchor, constant: screenHeight / 3 / 2),
        ])
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
