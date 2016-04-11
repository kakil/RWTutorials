//
//  Stopwatch.swift
//  PaintCode
//
//  Created by Kitwana on 4/11/16.
//  Copyright © 2016 Ray Wenderlich. All rights reserved.
//

import UIKit

@IBDesignable
class Stopwatch: UIView {
    override func drawRect(rect: CGRect) {
        PaintCodeTutorial.drawStopwatch()
    }
}