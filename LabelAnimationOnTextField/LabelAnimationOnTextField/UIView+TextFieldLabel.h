//
//  UIView+TextFieldLabel.h
//  LabelAnimationOnTextField
//
//  Created by Pradeep Burugu on 1/2/16.
//  Copyright © 2016 Pradeep Burugu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TextFieldLabel)
-(UILabel *)animateLabelTop:(UITextField *)textField;
-(UILabel *)animateLabelTop:(UITextField *)textField withFontSize:(CGFloat)fontSize;
@end
