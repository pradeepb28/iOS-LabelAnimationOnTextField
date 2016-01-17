//
//  UIView+TextFieldLabel.m
//  LabelAnimationOnTextField
//
//  Created by Pradeep Burugu on 1/2/16.
//  Copyright © 2016 Pradeep Burugu. All rights reserved.
//

#import "UIView+TextFieldLabel.h"
#define FONT_NAME @"System"
#define FONT_SIZE 8
#define RED 0.0
#define GREEN 0.0
#define BLUE 0.0
@implementation UIView (TextFieldLabel)

-(UILabel *)animateLabelTop:(UITextField *)textField{
   // return [self animateLabelTop:textField withFontName:FONT_NAME withFontSize:FONT_SIZE withColorRed:RED andGreen:GREEN andBlue:BLUE];
    return [self animateLabelTop:textField withFontName:@"System" withFontSize:8 withColorRed:0.0/255.0 andGreen:0.0/255.0 andBlue:0.0/255.0];
}
-(UILabel *)animateLabelTop:(UITextField *)textField withFontSize:(CGFloat)size{
       return [self animateLabelTop:textField withFontName:FONT_NAME withFontSize:size withColorRed:RED andGreen:GREEN andBlue:BLUE];
}
-(UILabel *)animateLabelTop:(UITextField *)textField withFontName:(NSString *)fontName{
    return [self animateLabelTop:textField withFontName:fontName withFontSize:FONT_SIZE withColorRed:RED andGreen:GREEN andBlue:BLUE];
}
-(UILabel *)animateLabelTop:(UITextField *)textField withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue{
    return [self animateLabelTop:textField withFontName:FONT_NAME withFontSize:FONT_SIZE withColorRed:red andGreen:green andBlue:blue];
}
-(UILabel *)animateLabelTop:(UITextField *)textField withFontName:(NSString *)fontName withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue{
    return [self animateLabelTop:textField withFontName:fontName withFontSize:FONT_SIZE withColorRed:red andGreen:green andBlue:blue];
}
-(UILabel *)animateLabelTop:(UITextField *)textField withFontName:(NSString *)fontName withFontSize:(CGFloat)fontSize withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue{
    if (textField.tag!=100) {
   UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(textField.frame.origin.x, textField.frame.origin.y, textField.frame.size.width, 10)];
    label.userInteractionEnabled=NO;
    textField.tag=100;
    label.font=[UIFont fontWithName:fontName size:fontSize];
    label.font=[label.font fontWithSize:fontSize];
    label.numberOfLines=1;
    label.baselineAdjustment=UIBaselineAdjustmentAlignBaselines;
    label.textColor=[UIColor colorWithRed:red green:green blue:blue alpha:0.75];
    label.text=textField.placeholder;
    [UIView animateWithDuration:0.10 animations:^{
            label.frame=CGRectMake(textField.frame.origin.x, textField.frame.origin.y-10, textField.frame.size.width, 10);
    } completion:^(BOOL finished) {
        label.frame=CGRectMake(textField.frame.origin.x, textField.frame.origin.y-10, textField.frame.size.width, 10);
    }];
    return label;
    }
    return nil;
}
@end
