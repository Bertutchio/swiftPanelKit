//
//  LeftMenu.swift
//  left_menu
//
//  Created by Paul Rodrigues on 06/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import UIKit

class SwiftPanel {

    var panelMask: SwiftPanelMask!
    var panelContent: SwiftPanelContent!


    init(toView: UIView, config: Panel) {

        panelMask    = SwiftPanelMask(frame: toView.bounds, config: config.mask)
        panelContent = SwiftPanelContent(frame: toView.bounds, config: config.content)

        panelMask.parent = self

        toView.addSubview(panelMask)
        toView.addSubview(panelContent)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func show() {

        UIView.animate(
            withDuration: panelMask.aspect.animation.duration,
            animations: { self.panelMask.show() },
            completion: { (sucess) in

                UIView.animate(
                    withDuration: self.panelContent.aspect.animation.duration,
                    animations: { self.panelContent.show() },
                    completion: { (sucess) in

                    }
                )
            }
        )
    }

    func hide() {
        UIView.animate(
            withDuration: panelContent.aspect.animation.duration,
            animations: { self.panelContent.hide() },
            completion: { (sucess) in

                UIView.animate(
                    withDuration: self.panelMask.aspect.animation.duration,
                    animations: { self.panelMask.hide() },
                    completion: { (sucess) in

                    }
                )
            }
        )
    }

}
