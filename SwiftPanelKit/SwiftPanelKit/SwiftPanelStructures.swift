//
//  SwiftPanelStructures.swift
//  SwiftPanelKit
//
//  Created by Paul Rodrigues on 24/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import UIKit

struct Panel {

    var mask: Mask
    var content: Content

    init() {
        mask = Mask()
        content = Content()
    }

}

struct Mask {

    var aspect: MaskAspect
    var behaviour: MaskBehaviour

    init() {
        aspect = MaskAspect()
        behaviour = MaskBehaviour()
    }

}


struct Content {

    var aspect: ContentAspect
    var behaviour: ContentBehaviour

    init() {
        aspect = ContentAspect()
        behaviour = ContentBehaviour()
    }

}


struct MaskAspect {

    var color: UIColor
    var alpha: CGFloat
    var animation: AnimationAspect

    init() {
        color = .black
        alpha = 0.75
        animation = AnimationAspect()
    }

}


struct ContentAspect {

    var marginOppositeSide: CGFloat
    var marginSides: CGFloat
    var color: UIColor
    var alpha: CGFloat
    var cornerRadius: CGFloat
    var animation: AnimationAspect

    init() {
        color = .white
        alpha = 1
        marginOppositeSide = 60
        marginSides = 5
        cornerRadius = 20
        animation = AnimationAspect()
    }
}


struct AnimationAspect {

    var duration: TimeInterval
    var direction: AnimationDirection

    init() {
        duration = 0.35
        direction = .botomToTop
    }

}

struct MaskBehaviour {

    var closeOnTouche: Bool = true;

}

struct ContentBehaviour {

    var closeOnTouche: Bool = true;

}

enum AnimationDirection {
    case topToBotom
    case botomToTop
    case leftToRight
    case rightToLeft
}
