//
//  LeftMenu.swift
//  left_menu
//
//  Created by Paul Rodrigues on 06/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import UIKit

class SwiftPanel {

    var bounds: CGRect
    var panelMask: SwiftPanelMask!
    var panelContent: SwiftPanelContent!

    init(view: UIView) {

        bounds = view.bounds
        panelMask    = SwiftPanelMask(frame: bounds)
        panelContent = SwiftPanelContent(frame: bounds)

        panelMask.parent = self

        view.addSubview(panelMask)
        view.addSubview(panelContent)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func show() {

        UIView.animate(
            withDuration: 0.35,
            animations: { self.panelMask.show() },
            completion: { (sucess) in

                UIView.animate(
                    withDuration: 0.35,
                    animations: { self.panelContent.show() },
                    completion: { (sucess) in

                    }
                )
            }
        )
    }

    func hide() {
        UIView.animate(
            withDuration: 0.35,
            animations: { self.panelContent.hide() },
            completion: { (sucess) in

                UIView.animate(
                    withDuration: 0.35,
                    animations: { self.panelMask.hide() },
                    completion: { (sucess) in

                    }
                )
            }
        )
    }

}
