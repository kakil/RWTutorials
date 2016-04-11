//
//  PaintCodeTutorial.swift
//  PaintCodeTutorial
//
//  Created by Kitwana Akil on 4/11/16.
//  Copyright (c) 2016 AkilDev LLC. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class PaintCodeTutorial : NSObject {

    //// Cache

    private struct Cache {
        static let baseColor: UIColor = UIColor(red: 0.067, green: 0.553, blue: 0.855, alpha: 1.000)
    }

    //// Colors

    public class var baseColor: UIColor { return Cache.baseColor }

    //// Drawing Methods

    public class func drawStopwatch() {

        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalInRect: CGRect(x: 15, y: 30, width: 220, height: 220))
        PaintCodeTutorial.baseColor.setFill()
        ovalPath.fill()


        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: 114, y: 2, width: 22, height: 34))
        PaintCodeTutorial.baseColor.setFill()
        rectanglePath.fill()


        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPoint(x: 214.14, y: 30))
        bezierPath.addLineToPoint(CGPoint(x: 235.36, y: 51.21))
        bezierPath.addLineToPoint(CGPoint(x: 221.21, y: 65.35))
        bezierPath.addCurveToPoint(CGPoint(x: 215.21, y: 59.35), controlPoint1: CGPoint(x: 221.21, y: 65.35), controlPoint2: CGPoint(x: 218.6, y: 62.74))
        bezierPath.addLineToPoint(CGPoint(x: 206, y: 59.35))
        bezierPath.addCurveToPoint(CGPoint(x: 206, y: 50.14), controlPoint1: CGPoint(x: 206, y: 59.35), controlPoint2: CGPoint(x: 206, y: 52.5))
        bezierPath.addCurveToPoint(CGPoint(x: 200, y: 44.14), controlPoint1: CGPoint(x: 202.61, y: 46.75), controlPoint2: CGPoint(x: 200, y: 44.14))
        bezierPath.addLineToPoint(CGPoint(x: 214.14, y: 30))
        bezierPath.closePath()
        PaintCodeTutorial.baseColor.setFill()
        bezierPath.fill()
    }

    public class func drawStopwatch_Hand() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalInRect: CGRect(x: 426, y: 99, width: 30, height: 30))
        UIColor.whiteColor().setFill()
        ovalPath.fill()


        //// Bezier 2 Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, 125, 110)

        let bezier2Path = UIBezierPath()
        bezier2Path.moveToPoint(CGPoint(x: 4, y: -87))
        bezier2Path.addCurveToPoint(CGPoint(x: 4, y: -14.46), controlPoint1: CGPoint(x: 4, y: -87), controlPoint2: CGPoint(x: 4, y: -47.23))
        bezier2Path.addCurveToPoint(CGPoint(x: 15, y: 0), controlPoint1: CGPoint(x: 10.34, y: -12.71), controlPoint2: CGPoint(x: 15, y: -6.9))
        bezier2Path.addCurveToPoint(CGPoint(x: 4, y: 14.46), controlPoint1: CGPoint(x: 15, y: 6.9), controlPoint2: CGPoint(x: 10.34, y: 12.71))
        bezier2Path.addCurveToPoint(CGPoint(x: 4, y: 28), controlPoint1: CGPoint(x: 4, y: 22.74), controlPoint2: CGPoint(x: 4, y: 28))
        bezier2Path.addLineToPoint(CGPoint(x: -4, y: 28))
        bezier2Path.addCurveToPoint(CGPoint(x: -4, y: 14.46), controlPoint1: CGPoint(x: -4, y: 28), controlPoint2: CGPoint(x: -4, y: 22.74))
        bezier2Path.addCurveToPoint(CGPoint(x: -15, y: 0), controlPoint1: CGPoint(x: -10.34, y: 12.71), controlPoint2: CGPoint(x: -15, y: 6.9))
        bezier2Path.addCurveToPoint(CGPoint(x: -4, y: -14.46), controlPoint1: CGPoint(x: -15, y: -6.9), controlPoint2: CGPoint(x: -10.34, y: -12.71))
        bezier2Path.addCurveToPoint(CGPoint(x: -4, y: -87), controlPoint1: CGPoint(x: -4, y: -47.23), controlPoint2: CGPoint(x: -4, y: -87))
        bezier2Path.addLineToPoint(CGPoint(x: 4, y: -87))
        bezier2Path.addLineToPoint(CGPoint(x: 4, y: -87))
        bezier2Path.closePath()
        UIColor.whiteColor().setFill()
        bezier2Path.fill()

        CGContextRestoreGState(context)
    }

}