//
//  UIImage+extensions.swift
//  ButterCheeseEggs
//
//  Created by Kamaal M Farah on 23/01/2021.
//

import UIKit
import CoreGraphics

extension UIImage {
    func resizeImage(_ dimension: CGFloat, opaque: Bool, contentMode: UIView.ContentMode = .scaleAspectFit) -> UIImage {
        let width: CGFloat
        let height: CGFloat

        let size = self.size
        let aspectRatio =  size.width / size.height

        switch contentMode {
        case .scaleAspectFit:
            if aspectRatio > 1 {
                width = dimension
                height = dimension / aspectRatio
            } else {
                height = dimension
                width = dimension * aspectRatio
            }
        default:
            fatalError("UIIMage.resizeToFit(): FATAL: Unimplemented ContentMode")
        }

        let renderFormat = UIGraphicsImageRendererFormat.default()
        renderFormat.opaque = opaque
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: width, height: height), format: renderFormat)
        let newImage = renderer.image { (_: UIGraphicsImageRendererContext) in
            self.draw(in: CGRect(x: 0, y: 0, width: width, height: height))
        }

        return newImage
    }
}
