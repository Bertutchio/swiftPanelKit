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
        background = SwiftPanelBackground(frame: withParentView.frame)
        content    = SwiftPanelContent(frame: withParentView.frame)

        parentView.addSubview(background)
        parentView.addSubview(content)

    }


    func show() {
        background.show(closureSuccess: {
            self.content.show(closureSuccess: {})
        })
    }

    func hide() {
        content.hide(closureSuccess: {
            self.background.hide(closureSuccess: {})
        })

    }

}
