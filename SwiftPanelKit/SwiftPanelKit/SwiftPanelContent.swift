//
//  SwiftMenuContent.swift
//  left_menu
//
//  Created by Paul Rodrigues on 10/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import UIKit

class SwiftPanelContent: UIView {

    var aspect: ContentAspect = ContentAspect()
    var animation: AnimationAspect = AnimationAspect()

    override init(frame: CGRect) {

        super.init(frame: frame)

        let rect = self.calcContentFrame(fromFrameReference: frame)

        self.frame = rect

        backgroundColor = aspect.color
        alpha = aspect.alpha
        layer.cornerRadius = aspect.cornerRadius
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func calcContentFrame(fromFrameReference: CGRect) -> CGRect {

        return CGRect(
            x: 0 - aspect.width - aspect.cornerRadius,
            y: 0 + aspect.paddingTop,
            width: aspect.width + aspect.cornerRadius,
            height: fromFrameReference.height - aspect.paddingTop - aspect.paddingBottom
        )
    }

    func show(closureSuccess: @escaping () -> Void) {

        UIView.animate(
            withDuration: animation.duration,
            animations: { self.transform = CGAffineTransform(translationX: self.aspect.width, y: 0) },
            completion: { (sucess) in
                closureSuccess()
        }
        )

    }


    func hide(closureSuccess: @escaping () -> Void) {

        UIView.animate(
            withDuration: animation.duration,
            animations: { self.transform = CGAffineTransform.identity },
            completion: { (sucess) in
                closureSuccess()
            }
        )

    }

}
