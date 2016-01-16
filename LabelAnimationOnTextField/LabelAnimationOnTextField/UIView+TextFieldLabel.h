//
//  UIView+TextFieldLabel.h
//  LabelAnimationOnTextField
//
//  Created by Pradeep Burugu on 1/2/16.
//  Copyright © 2016 Pradeep Burugu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TextFieldLabel)
// animates the label to top with default values.
-(UILabel *)animateLabelTop:(UITextField *)textField;
-(UILabel *)animateLabelTop:(UITextField *)textField withFontSize:(CGFloat)size;
-(UILabel *)animateLabelTop:(UITextField *)textField withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue;
-(UILabel *)animateLabelTop:(UITextField *)textField withFontName:(NSString *)fontName withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue;
-(UILabel *)animateLabelTop:(UITextField *)textField withFontName:(NSString *)fontName withFontSize:(CGFloat)fontSize withColorRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue;


@end
