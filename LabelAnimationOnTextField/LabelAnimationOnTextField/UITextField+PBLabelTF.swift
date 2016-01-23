//
//  UITextField+PBLabelTF.swift
//  LabelAnimationOnTextField
//
//  Created by Pradeep Burugu on 1/13/16.
//  Copyright © 2016 Pradeep Burugu. All rights reserved.
//

import UIKit
extension UITextField {
    static func animatePBLabelTF(textField:UITextField, align:String, position:String, fontName:String, fontSize:CGFloat, red:CGFloat, green:CGFloat, blue:CGFloat)->UILabel?{
        var labelPosition:CGRect?
        var labelAnimatePosition:CGRect?
        var label:UILabel?
        
        if textField.tag != 100 {
            // Label Position - top
            if position == "top" || position == "TOP" || position == "Top" {
                labelPosition = CGRectMake(textField.frame.origin.x, textField.frame.origin.y, textField.frame.size.width, 10)
                labelAnimatePosition = CGRectMake(textField.frame.origin.x, textField.frame.origin.y-11, textField.frame.size.width, 10)
                // Label Position = bottom
            } else if position == "bottom" || position == "BOTTOM" || position == "Bottom" {
                labelPosition = CGRectMake(textField.frame.origin.x, textField.frame.origin.y+textField.frame.size.height, textField.frame.size.width, 10);
                labelAnimatePosition = CGRectMake(textField.frame.origin.x, textField.frame.origin.y+textField.frame.size.height+1, textField.frame.size.width, 10);
            }
            label = UILabel(frame: labelPosition!)
            //Label Alignment - left
            if align == "left" || align == "LEFT" || align == "Left" {
                label!.textAlignment = NSTextAlignment.Left
            } // Label Alignment - right
            else if align == "right" || align == "RIGHT" || align == "Right" {
                label!.textAlignment = NSTextAlignment.Right
            }
            label!.userInteractionEnabled = false
            textField.tag = 100
            label!.font = UIFont(name: fontName, size: fontSize)
            label!.font = label!.font.fontWithSize(fontSize)
            label!.numberOfLines = 1
            label!.baselineAdjustment = UIBaselineAdjustment.AlignBaselines
            label!.textColor = UIColor(red: red, green: green, blue: blue, alpha: 0.75)
            label!.text = textField.placeholder
            UIView.animateWithDuration(0.10, animations: { () -> Void in
                label!.frame = labelAnimatePosition!
                }, completion: { (Bool) -> Void in
                    label!.frame = labelAnimatePosition!
            })
        }
        return label
    }
    
}