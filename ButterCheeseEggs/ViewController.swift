//
//  ViewController.swift
//  ButterCheeseEggs
//
//  Created by Kamaal M Farah on 22/01/2021.
//

import UIKit

class ViewController: UIViewController {

    lazy var startButton: UIButton = {
        let button = AppButtons.ordinaryButton(title: "Start")
        button.addTarget(self, action: #selector(onStartTap), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "BCE"
        self.navigationController?.navigationBar.prefersLargeTitles = true

        self.view.addSubview(startButton)

        let safeAreaLayoutGuide = self.view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            startButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        ])
    }

    @objc
    private func onStartTap(_ sender: UIButton) {
        print("tap")
    }

}

#if DEBUG
import SwiftUI

private struct ViewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = UINavigationController

    func makeUIViewController(context: Context) -> UIViewControllerType {
        UINavigationController(rootViewController: ViewController())
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
}

struct ViewControllerRepresentable_Previews: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
            .edgesIgnoringSafeArea(.all)
    }
}
#endif
