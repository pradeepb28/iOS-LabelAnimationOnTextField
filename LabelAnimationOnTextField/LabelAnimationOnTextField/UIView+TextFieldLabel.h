//
//  UIView+TextFieldLabel.h
//  LabelAnimationOnTextField
//
//  Created by Pradeep Burugu on 1/2/16.
//  Copyright © 2016 Pradeep Burugu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TextFieldLabel)
+(UILabel *)animatePBLabel:(UITextField *)textField;
+(UILabel *)animatePBLabel:(UITextField *)textField withAlignment:(NSString *)align andPosition:(NSString *)position;
+(UILabel *)animatePBLabel:(UITextField *)textField withAlignment:(NSString *)align andPosition:(NSString *)position withFontSize:(CGFloat)size;
+(UILabel *)animatePBLabel:(UITextField *)textField withAlignment:(NSString *)align andPosition:(NSString *)position withFontName:(NSString *)fontName;
+(UILabel *)animatePBLabel:(UITextField *)textField withAlignment:(NSString *)align andPosition:(NSString *)position withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue;
+(UILabel *)animatePBLabel:(UITextField *)textField withAlignment:(NSString *)align andPosition:(NSString *)position withFontName:(NSString *)fontName withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue;
+(UILabel *)animatePBLabel:(UITextField *)textField withAlignment:(NSString *)align andPosition:(NSString *)position  withFontName:(NSString *)fontName withFontSize:(CGFloat)fontSize withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue;

@end
