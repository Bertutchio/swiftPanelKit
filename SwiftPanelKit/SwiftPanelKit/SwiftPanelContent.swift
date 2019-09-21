//
//  SwiftMenuContent.swift
//  left_menu
//
//  Created by Paul Rodrigues on 10/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import UIKit

class SwiftPanelContent: UIView {

    var aspect: ContentAspect!

    var initialPlacement: CGRect {
        get {
            var x: CGFloat = 0
            var y: CGFloat = 0
            var width: CGFloat = 0
            var height: CGFloat = 0

            switch aspect.animation.direction {
            case .botomToTop:
                y = frame.height
                x = aspect.marginSides
            case .leftToRight:
                x = 0 - frame.width
                y = aspect.marginSides
            case .rightToLeft:
                x = frame.width
                y = aspect.marginSides
            case .topToBotom:
                y = 0 - frame.height
                x = aspect.marginSides
            }

            switch aspect.animation.direction {
            case .leftToRight, .rightToLeft:
                height = frame.height - (aspect.marginSides * 2)
                width = frame.width
            case .topToBotom, .botomToTop:
                width = frame.width - (aspect.marginSides * 2)
                height = frame.height
            }

            return CGRect(
                x: x,
                y: y,
                width: width,
                height: height
            )
        }
    }

    var translationPoint: CGPoint {
        get {
            var x: CGFloat = 0
            var y: CGFloat = 0

            switch aspect.animation.direction {
            case .botomToTop:
                y = 0 - frame.height + aspect.marginOppositeSide
            case .leftToRight:
                x = frame.width - aspect.marginOppositeSide
            case .rightToLeft:
                x = 0 - frame.width + aspect.marginOppositeSide
            case .topToBotom:
                y = frame.height - aspect.marginOppositeSide
            }

            return CGPoint.init(x: x, y: y)
        }
    }

    init(frame: CGRect, config: Content) {
        super.init(frame: frame)
        aspect = config.aspect
        self.frame = initialPlacement
        backgroundColor = aspect.color
        alpha = aspect.alpha
        layer.cornerRadius = aspect.cornerRadius
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func show() {
        self.transform = CGAffineTransform(
            translationX: translationPoint.x,
            y: translationPoint.y
        )
    }

    func hide() {
        self.transform = CGAffineTransform.identity
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {

    }

}
