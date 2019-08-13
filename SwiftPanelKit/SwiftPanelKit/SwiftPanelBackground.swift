//
//  SwiftMenuBackground.swift
//  left_menu
//
//  Created by Paul Rodrigues on 09/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import UIKit

class SwiftPanelBackground: UIView {


    var animationDuration: TimeInterval = 0.35
    


    func hide() {

        UIView.animate(withDuration: animationDuration, animations: {
            self.backgroundColor = .white
            self.alpha = 0
        }) { (success) in
            self.sendSubviewToBack(self)
            self.minimize()
        }

    }

    func show() {

        self.maximize(rect: (superview?.frame)!)

        UIView.animate(withDuration: animationDuration, animations: {
            self.backgroundColor = .black
            self.alpha = 0.75
        }) { (success) in
            self.bringSubviewToFront(self)
        }

    }


    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {


    }

}
