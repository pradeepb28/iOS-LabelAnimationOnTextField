//
//  UIView+TextFieldLabel.m
//  LabelAnimationOnTextField
//
//  Created by Pradeep Burugu on 1/2/16.
//  Copyright © 2016 Pradeep Burugu. All rights reserved.
//

#import "UIView+TextFieldLabel.h"
#import <objc/runtime.h>
@implementation UIView (TextFieldLabel)
-(UILabel *)animateLabelTop:(UITextField *)textField{
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(textField.frame.origin.x, textField.frame.origin.y-10, textField.frame.size.width, 10)];
    label.font=[label.font fontWithSize:8];
    label.alpha=0.5;
    label.text=textField.placeholder;
    return label;

}
//- (void)setView:(UIView *)view
//{
//    objc_setAssociatedObject(self, (__bridge const void *)(kDHStyleKey), view, OBJC_ASSOCIATION_ASSIGN);
//
//}
//
//- (NSString*)view
//{
//    return objc_getAssociatedObject(self, (__bridge const void *)(kDHStyleKey));
//}
@end
