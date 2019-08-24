//
//  SwiftMenuBackground.swift
//  left_menu
//
//  Created by Paul Rodrigues on 09/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import UIKit

class SwiftPanelBackground: UIView {

    var aspect: MaskAspect = MaskAspect()
    var animation: AnimationAspect = AnimationAspect()

    override init(frame: CGRect) {
        super.init(frame: frame)
        initAspect()
    }

    init(frame: CGRect, withAspect: MaskAspect, andAnimation: AnimationAspect) {
        super.init(frame: frame)
        aspect = withAspect
        initAspect()
    }

    func initAspect() {
        backgroundColor = aspect.color
        alpha = 0
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func hide(closureSuccess: @escaping () -> Void) {

        UIView.animate(
            withDuration: animation.duration,
            animations: { self.alpha = 0 },
            completion: { (sucess) in
                closureSuccess()
            }
        )

    }

    func show(closureSuccess: @escaping () -> Void) {



        UIView.animate(
            withDuration: animation.duration,
            animations: { self.alpha = self.aspect.alpha },
            completion: { (sucess) in
                closureSuccess()
            }
        )

    }


    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {


    }

}
