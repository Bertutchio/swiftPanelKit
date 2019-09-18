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

    var initialFrame: CGRect {
        get {
            var x: CGFloat = 0
            var y: CGFloat = 0
            var width: CGFloat = 0
            var height: CGFloat = 0

            switch aspect.animation.direction {
            case .botomToTop:
                y = aspect.height
                x = aspect.marginSides
            case .leftToRight:
                x = 0 - aspect.width
                y = aspect.marginSides
            case .rightToLeft:
                x = aspect.width
                y = aspect.marginSides
            case .topToBotom:
                y = 0 - aspect.height
                x = aspect.marginSides
            }

            switch aspect.animation.direction {
            case .leftToRight, .rightToLeft:
                height = aspect.height - (aspect.marginSides * 2)
                width = aspect.width
            case .topToBotom, .botomToTop:
                width = aspect.width - (aspect.marginSides * 2)
                height = aspect.height
            }

            return CGRect(
                x: x,
                y: y,
                width: width,
                height: height
            )
        }
    }

    var translationPoint: [CGFloat] {
        get {
            var x: CGFloat = 0
            var y: CGFloat = 0

            switch aspect.animation.direction {
            case .botomToTop:
                y = 0 - aspect.height + aspect.marginOppositeSide
            case .leftToRight:
                x = aspect.width - aspect.marginOppositeSide
            case .rightToLeft:
                x = 0 - aspect.width + aspect.marginOppositeSide
            case .topToBotom:
                y = aspect.height - aspect.marginOppositeSide
            }

            return [x,y]
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        aspect = ContentAspect(bounds: frame)
        initAspect()
    }

    func initAspect() {
        frame = initialFrame
        backgroundColor = aspect.color
        alpha = aspect.alpha
        layer.cornerRadius = aspect.cornerRadius
    }


    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func show() {
        self.transform = CGAffineTransform(translationX: translationPoint[0], y: translationPoint[1])
    }

    func hide() {
        self.transform = CGAffineTransform.identity
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {

        print("touching content")

    }

}
