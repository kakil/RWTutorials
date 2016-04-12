//
//  ProgressWheel.swift
//  PaintCode
//
//  Created by Kitwana on 4/11/16.
//  Copyright © 2016 Ray Wenderlich. All rights reserved.
//

import UIKit

@IBDesignable
class ProgressWheel: UIView {
    
    var progressWheelAngle:CGFloat = 0.0
    
    override func drawRect(rect: CGRect) {
        ProgressWheelStyleKit.drawCanvas1(progress: progressWheelAngle)
        
    }
    
}
