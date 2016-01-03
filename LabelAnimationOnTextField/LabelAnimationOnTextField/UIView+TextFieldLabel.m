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
    return [self animateLabelTop:textField withFontName:@"System" withFontSize:8 withColorRed:0.0 andGreen:0.0 andBlue:0.0];
}
-(UILabel *)animateLabelTop:(UITextField *)textField withFontSize:(CGFloat)size{
       return [self animateLabelTop:textField withFontName:@"System" withFontSize:size withColorRed:0.0 andGreen:0.0 andBlue:0.0];
}
-(UILabel *)animateLabelTop:(UITextField *)textField withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue{
    return [self animateLabelTop:textField withFontName:@"System" withFontSize:8 withColorRed:red andGreen:green andBlue:blue];
}
-(UILabel *)animateLabelTop:(UITextField *)textField withFontName:(NSString *)fontName withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue{
    return [self animateLabelTop:textField withFontName:fontName withFontSize:8 withColorRed:red andGreen:green andBlue:blue];
}
-(UILabel *)animateLabelTop:(UITextField *)textField withFontName:(NSString *)fontName withFontSize:(CGFloat)fontSize withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue{
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(textField.frame.origin.x, textField.frame.origin.y, textField.frame.size.width, 10)];
    label.userInteractionEnabled=NO;
    label.font=[UIFont fontWithName:fontName size:fontSize];
    label.font=[label.font fontWithSize:fontSize];
    label.numberOfLines=1;
    label.baselineAdjustment=UIBaselineAdjustmentAlignBaselines;
    label.textColor=[UIColor colorWithRed:red green:green blue:blue alpha:0.5];
    label.text=textField.placeholder;
    [UIView animateWithDuration:0.10 animations:^{
            label.frame=CGRectMake(textField.frame.origin.x, textField.frame.origin.y-10, textField.frame.size.width, 10);
    } completion:^(BOOL finished) {
        label.frame=CGRectMake(textField.frame.origin.x, textField.frame.origin.y-10, textField.frame.size.width, 10);
    }];
    return label;
}

@end
