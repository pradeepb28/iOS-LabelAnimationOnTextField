//
//  UIView+TextFieldLabel.m
//  LabelAnimationOnTextField
//
//  Created by Pradeep Burugu on 1/2/16.
//  Copyright © 2016 Pradeep Burugu. All rights reserved.
//

#import "UIView+TextFieldLabel.h"
@implementation UIView (TextFieldLabel)

-(UILabel *)animateLabelTop:(UITextField *)textField{
//    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(textField.frame.origin.x, textField.frame.origin.y-10, textField.frame.size.width, 10)];
//    label.font=[label.font fontWithSize:8];
//    label.alpha=0.5;
//    label.text=textField.placeholder;
    return [self animateLabelTop:textField withFontSize:8];
}
-(UILabel *)animateLabelTop:(UITextField *)textField withFontSize:(CGFloat)fontSize{
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(textField.frame.origin.x, textField.frame.origin.y-10, textField.frame.size.width, 10)];
    label.font=[label.font fontWithSize:fontSize];
    label.alpha=0.5;
    label.text=textField.placeholder;
    return label;
}

@end
