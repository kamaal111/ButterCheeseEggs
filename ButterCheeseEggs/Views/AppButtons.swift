//
//  AppButtons.swift
//  ButterCheeseEggs
//
//  Created by Kamaal M Farah on 23/01/2021.
//

import UIKit

struct AppButtons {
    private init() { }

    static func ordinaryButton(title: String) -> UIButton {
        let button = UIButton(type: .system)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        return button
    }

    static func gameButton() -> UIButton {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.lightGray.cgColor
        return button
    }
}
