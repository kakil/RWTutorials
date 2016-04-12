//
//  ControlViewController.swift
//  PaintCode
//
//  Created by Felipe Laso Marsetti on 1/15/15.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import UIKit

class ControlViewcontroller: UIViewController {
    
    @IBOutlet weak var progressWheel: ProgressWheel?
    @IBOutlet weak var slider: UISlider?
    
    override func viewDidLoad() {
        progressWheel?.progressWheelAngle = 0.5
    }
    
    @IBAction func updateProgressWheel(sender: UISlider) {
        
        print("\(sender.value)")
    
        progressWheel?.progressWheelAngle = CGFloat(self.slider!.value)
        progressWheel?.setNeedsDisplay()
    }
}

