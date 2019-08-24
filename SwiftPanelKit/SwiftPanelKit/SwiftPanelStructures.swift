//
//  SwiftPanelStructures.swift
//  SwiftPanelKit
//
//  Created by Paul Rodrigues on 24/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import UIKit

struct MaskAspect {

    var color: UIColor = .black
    var alpha: CGFloat = 0.75

    var blurIntensity: CGFloat = 0

}


struct ContentAspect {

    var color: UIColor = .white
    var alpha: CGFloat = 1

    var paddingTop: CGFloat = 70
    var paddingBottom: CGFloat = 50

    var width: CGFloat = 300

    var cornerRadius: CGFloat = 20
}


struct AnimationAspect {

    var duration: TimeInterval = 0.35

}
