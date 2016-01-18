# iOS-LabelAnimationOnTextField
This repo is useful for iOS developers who wants to animate label on the text field.

<H1>Floating Style Label.</H1>

Steps:
- Add UITextField+PBLabel.h and .m files in your project.
- Import .h file where you want to implement animation on text field.
- And use methods in Category using UITextField based on your requirement.<br/>
Example:<br/>
//Delegate method<br/>
<b>
-(void)textFieldDidBeginEditing:(UITextField *)textField{ <br/>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[self.view addSubview:[UITextField animatePBLabel:textField]]; <br/>
}</b>

Version 1 - Label animates top/bottom and left/right on the TextField. Implemented using Categories that provides users to configure using various options like font name, font color, font size, position, alignment... . 
<h4>Version 2 Under Development.</h4>
Version 2 - Includes improved first version as well as different floating label patterns.

This repo is useful for iOS developers who wants to animate label on the text field. Development continues further to provide additional features. I will add more notes here in detail.<br/>
<b><h3>
Usage</h3></b><br/><ul>
Animates label with specified alignment and position.<br/> 
Alignment  = "left", "right".<br/>
Position   = "top", "bottom". <br/>
<b>
[self.view addSubview:[UITextField animatePBLabel:textField withAlignment:@"left" andPosition:@"top"]];</b></ul>
<br/><ul>
Animates label with specified alignment, position and color.<br/><b>
[self.view addSubview:[UITextField animatePBLabel:textField withAlignment:@"right" andPosition:@"bottom"            withColorRed:100.0/255.0 andGreen:125.0/255.0 andBlue:100.0/255.0]];</b></ul>
 <br/><ul>
Animates label with specified alignment,position and font name.<br/><b>
[self.view addSubview:[UITextField animatePBLabel:textField withAlignment:@"right" andPosition:@"top" withFontName:@"System"]];</b></ul>
 <br/><ul>
Animates label with specified alignment,position,font name and font color.<br/><b>
[self.view addSubview:[UITextField animatePBLabel:textField withAlignment:@"left" andPosition:@"top" withFontName:@"System" withColorRed:120.0/255.0 andGreen:120.0/255.0 andBlue:125.0/255.0]];</b></ul>
<br/><ul>
Animates label with specified alignment,position,font name, font size and font color.<br/><b>
[self.view addSubview:[UITextField animatePBLabel:textField withAlignment:@"right" andPosition:@"top" withFontName:@"System" withFontSize:10 withColorRed:150.0/255.0 andGreen:255.0/255.0 andBlue:100.0/255.0]];</b></ul>

<h1>LICENSE</h1>
The MIT License (MIT)

Copyright (c) 2016 Pradeep

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



