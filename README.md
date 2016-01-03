# iOS-LabelAnimationOnTextField
This repo is useful for iOS developers who wants to animate label on the text field.

<H1>Currently under Development.</H1>

This repo is useful for iOS developers who wants to animate label on the text field. Development continues further to provide additional features. I will add more notes here in detail.

Steps:
- Add UIView+TextFieldLabel.h and .m files in your project.
- Import .h file in any of your file where you want to implement this UI on textfield.
- And call methods in Category using UITextField instances based on your requirement.
Example:
[self.view addSubView:[self.myTextField animateLabelTopUp.....]];
