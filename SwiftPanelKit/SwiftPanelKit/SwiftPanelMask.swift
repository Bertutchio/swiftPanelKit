//
//  SwiftMenuBackground.swift
//  left_menu
//
//  Created by Paul Rodrigues on 09/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import UIKit

class SwiftPanelMask: UIView {

    var parent: SwiftPanel!
    var behaviour: MaskBehaviour!
    var aspect: MaskAspect!


    init(frame: CGRect, config: Mask) {
        super.init(frame: frame)
        aspect = config.aspect
        behaviour = config.behaviour
        backgroundColor = aspect.color
        alpha = aspect.alpha
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func hide() {
        self.alpha = 0
    }

    func show() {
        self.alpha = self.aspect.alpha
    }


    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {

        // TODO: avoid teh use of parent
        if behaviour.closeOnTouche {
            parent.hide()
        }

    }

}
