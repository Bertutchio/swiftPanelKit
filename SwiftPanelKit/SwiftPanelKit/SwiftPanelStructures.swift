//
//  SwiftPanelStructures.swift
//  SwiftPanelKit
//
//  Created by Paul Rodrigues on 24/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import UIKit

struct MaskAspect {

    var color: UIColor
    var alpha: CGFloat

    init() {
        color = .black
        alpha = 0.75
    }

}


struct ContentAspect {

    var bounds: CGRect
    var width: CGFloat
    var height: CGFloat
    var marginOppositeSide: CGFloat
    var color: UIColor
    var alpha: CGFloat
    var cornerRadius: CGFloat
    var animation: AnimationAspect

    init(bounds: CGRect) {
        self.bounds = bounds
        width = bounds.width
        height = bounds.height
        color = .white
        alpha = 1
        marginOppositeSide = 60
        cornerRadius = 20
        animation = AnimationAspect()
    }
}
