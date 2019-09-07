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
            print("init")
            panel = SwiftPanel(view: view)
//            view.addSubview(panel ?? UIView())
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

