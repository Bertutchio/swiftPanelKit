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

            switch aspect.animation.direction {
            case .botomToTop:
                y = aspect.height
            case .leftToRight:
                x = 0 - aspect.width
            case .rightToLeft:
                x = aspect.width
            case .topToBotom:
                y = 0 - aspect.height
            }

            return CGRect(
                x: x,
                y: y,
                width: aspect.width,
                height: aspect.height
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
