//
//  LeftMenu.swift
//  left_menu
//
//  Created by Paul Rodrigues on 06/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import UIKit

class SwiftPanel {

    var background: SwiftPanelBackground!
    var content: SwiftPanelContent!
    var parentView: UIView!


    init(withParentView: UIView) {
        
        parentView = withParentView
        background = SwiftPanelBackground()
        content    = SwiftPanelContent(frame: withParentView.frame)
        parentView.addSubview(background)
        background.addSubview(content)

    }


    func show() {
        background.show()
        content.show()
    }

    func hide() {
        content.hide()
        background.hide()
    }

}
