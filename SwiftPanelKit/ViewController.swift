//
//  ViewController.swift
//  SwiftPanelKit
//
//  Created by Paul Rodrigues on 13/08/2019.
//  Copyright © 2019 Paul Rodrigues. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var panel: SwiftPanel?


    @IBAction func showPanelAction(_ sender: Any) {

        if panel === nil {
            var panelConf = Panel()
            panelConf.content.aspect.color = .red
            panelConf.content.aspect.animation.duration = 0.25
            panel = SwiftPanel(toView: view, config: panelConf)
        }

        panel?.show()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {

        print("touching parent")

    }

}

