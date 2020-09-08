//
//  ViewController.swift
//  TapTouch
//
//  Created by sung hello on 2020/09/08.
//  Copyright © 2020 sung hello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtmessage: UILabel!
    @IBOutlet var txtTapcount: UILabel!
    @IBOutlet var txtTouchCount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        txtmessage.text = "Touches Began"
        txtTapcount.text = String(touch.tapCount)
        txtTouchCount.text = String(touches.count)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        txtmessage.text = "Touches Moved"
        txtTapcount.text = String(touch.tapCount)
        txtTouchCount.text = String(touches.count)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        txtmessage.text = "Touches Ended"
        txtTapcount.text = String(touch.tapCount)
        txtTouchCount.text = String(touches.count)
    }

}

