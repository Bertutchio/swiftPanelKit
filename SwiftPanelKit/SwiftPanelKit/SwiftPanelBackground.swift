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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        alpha = 0
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func hide(closureSuccess: @escaping () -> Void) {

        UIView.animate(
            withDuration: animationDuration,
            animations: { self.alpha = 0 },
            completion: { (sucess) in
                closureSuccess()
            }
        )

    }

    func show(closureSuccess: @escaping () -> Void) {

        UIView.animate(
            withDuration: animationDuration,
            animations: { self.alpha = 0.75 },
            completion: { (sucess) in
                closureSuccess()
            }
        )

    }


    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {


    }

}
