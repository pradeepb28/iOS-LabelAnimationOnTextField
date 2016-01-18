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
#define RED 0.0/255.0
#define GREEN 0.0/255.0
#define BLUE 0.0/255.0
#define ALIGNMENT @"LEFT"
#define POSITION @"TOP"
@implementation UITextField (PBLabel)
+(UILabel *)animatePBLabel:(UITextField *)textField{
        return [self animatePBLabel:textField withAlignment:ALIGNMENT andPosition:POSITION withFontName:FONT_NAME withFontSize:FONT_SIZE withColorRed:RED andGreen:GREEN andBlue:BLUE];
}
+(UILabel *)animatePBLabel:(UITextField *)textField withAlignment:(NSString *)align andPosition:(NSString *)position {
    return [self animatePBLabel:textField withAlignment:align andPosition:position withFontName:FONT_NAME withFontSize:FONT_SIZE withColorRed:RED andGreen:GREEN andBlue:BLUE];
}
+(UILabel *)animatePBLabel:(UITextField *)textField withAlignment:(NSString *)align andPosition:(NSString *)position withFontSize:(CGFloat)size{
    return [self animatePBLabel:textField withAlignment:align andPosition:position withFontName:FONT_NAME withFontSize:size withColorRed:RED andGreen:GREEN andBlue:BLUE];
}
+(UILabel *)animatePBLabel:(UITextField *)textField withAlignment:(NSString *)align andPosition:(NSString *)position withFontName:(NSString *)fontName{
    return [self animatePBLabel:textField withAlignment:align andPosition:position withFontName:fontName withFontSize:FONT_SIZE withColorRed:RED andGreen:GREEN andBlue:BLUE];
}
+(UILabel *)animatePBLabel:(UITextField *)textField withAlignment:(NSString *)align andPosition:(NSString *)position withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue{
    return [self animatePBLabel:textField withAlignment:align andPosition:position withFontName:FONT_NAME withFontSize:FONT_SIZE withColorRed:red andGreen:green andBlue:blue];
}
+(UILabel *)animatePBLabel:(UITextField *)textField withAlignment:(NSString *)align andPosition:(NSString *)position withFontName:(NSString *)fontName withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue{
    return [self animatePBLabel:textField withAlignment:align andPosition:position withFontName:fontName withFontSize:FONT_SIZE withColorRed:red andGreen:green andBlue:blue];
}
+(UILabel *)animatePBLabel:(UITextField *)textField withAlignment:(NSString *)align andPosition:(NSString *)position  withFontName:(NSString *)fontName withFontSize:(CGFloat)fontSize withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue{
    CGRect labelPosition;
    CGRect labelAnimatePosition;
    UILabel *label;
    if (textField.tag!=100) {
        // Label Position - Top
    if ([position isEqualToString:@"top"] || [position isEqualToString:@"TOP"] || [position isEqualToString:@"Top"]) {
    labelPosition = CGRectMake(textField.frame.origin.x, textField.frame.origin.y, textField.frame.size.width, 10);
    labelAnimatePosition = CGRectMake(textField.frame.origin.x, textField.frame.origin.y-11, textField.frame.size.width, 10);
        // Label Position - Bottom
    }else if ([position isEqualToString:@"bottom"] || [position isEqualToString:@"BOTTOM"] || [position isEqualToString:@"Bottom"]){

     labelPosition = CGRectMake(textField.frame.origin.x, textField.frame.origin.y+textField.frame.size.height, textField.frame.size.width, 10);
     labelAnimatePosition = CGRectMake(textField.frame.origin.x, textField.frame.origin.y+textField.frame.size.height+1, textField.frame.size.width, 10);
    }
        label=[[UILabel alloc]initWithFrame:labelPosition];
        // Label Alignment - left
        if ([align isEqualToString:@"left"] || [align isEqualToString:@"LEFT"] || [align isEqualToString:@"Left"]) {
            label.textAlignment = NSTextAlignmentLeft;
            // Label Alignment - right
        }else if([align isEqualToString:@"right"] || [align isEqualToString:@"RIGHT"] || [align isEqualToString:@"Right"]){
            label.textAlignment = NSTextAlignmentRight;
        }
    label.userInteractionEnabled=NO;
    textField.tag=100;
    label.font=[UIFont fontWithName:fontName size:fontSize];
    label.font=[label.font fontWithSize:fontSize];
    label.numberOfLines=1;
    label.baselineAdjustment=UIBaselineAdjustmentAlignBaselines;
    label.textColor=[UIColor colorWithRed:red green:green blue:blue alpha:0.75];
    label.text=textField.placeholder;
    [UIView animateWithDuration:0.10 animations:^{
        label.frame = labelAnimatePosition;
    } completion:^(BOOL finished) {
        label.frame = labelAnimatePosition;
    }];
    return label;
    }
    return nil;
}
@end
