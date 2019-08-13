//
//  SwiftMenuExtension.swift
//  left_menu
//
//  Created by Paul Rodrigues on 09/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import UIKit

extension UIView {

    func minimize() {
        let rect = CGRect(
            x: 0,
            y: 0,
            width: 0,
            height: 0
        )

        self.frame = rect
    }


    func maximize(rect: CGRect) {
        self.frame = rect
    }

}
