//
//  HomeViewController.swift
//  ButterCheeseEggs
//
//  Created by Kamaal M Farah on 22/01/2021.
//

import UIKit

class HomeViewController: UIViewController {

    lazy var startButton: UIButton = {
        let button = AppButtons.ordinaryButton(title: "Start")
        button.addTarget(self, action: #selector(onStartTap), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    @objc
    private func onStartTap(_ sender: UIButton) {
        let gameViewControler = GameViewController()
        self.navigationController?.pushViewController(gameViewControler, animated: true)
    }

    private func setupView() {
        self.title = "ButterCheeseEggs"
        if #available(iOS 11.0, *) {
            self.navigationController?.navigationBar.prefersLargeTitles = true
        }
        self.view.addSubview(startButton)
        setupConstraints()
    }

    private func setupConstraints() {
        if #available(iOS 11.0, *) {
            let safeAreaLayoutGuide = self.view.safeAreaLayoutGuide
            NSLayoutConstraint.activate([
                startButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
                startButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
            ])
        } else {
            NSLayoutConstraint.activate([
                startButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                startButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
            ])
        }
        
    }

}

#if DEBUG
import SwiftUI

@available(iOS 13.0, *)
struct HomeViewController_Previews: PreviewProvider {
    static var previews: some View {
        UINavigationController(rootViewController: HomeViewController()).toPreview()
            .edgesIgnoringSafeArea(.all)
    }
}
#endif
