//
//  SwiftPanelBehaviours.swift
//  SwiftPanelKit
//
//  Created by Paul Rodrigues on 27/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import Foundation

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

enum AnimationDirection {
    case topToBotom
    case botomToTop
    case leftToRight
    case rightToLeft
}
