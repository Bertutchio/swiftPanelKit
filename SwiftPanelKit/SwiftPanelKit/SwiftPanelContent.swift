//
//  SwiftMenuContent.swift
//  left_menu
//
//  Created by Paul Rodrigues on 10/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import UIKit

class SwiftPanelContent: UIView {


    var animationDuration: TimeInterval = 0.5

    override init(frame: CGRect) {

        let rect = CGRect(
            x: -200,
            y: 0,
            width: 200,
            height: frame.height
        )

        super.init(frame: rect)
        backgroundColor = .red

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func show() {

        self.bringSubviewToFront(self)

        UIView.animate(withDuration: animationDuration, animations: {

            self.transform = CGAffineTransform(translationX: 200, y: 0)

        }) { (success) in

        }

    }


    func hide() {

        UIView.animate(withDuration: animationDuration, animations: {

            self.transform = CGAffineTransform.identity

        }) { (success) in

        }

    }

}
