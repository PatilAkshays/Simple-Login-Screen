//
//  ViewController.h
//  LoginScreen
//
//  Created by Mac on 19/09/16.
//  Copyright © 2016 Akshay. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kHeightOfStatusBar 30.0
#define kAllUIElementHeight 40.0
#define kHorizantalPadding 20.0
#define kVerticalPadding 20.0

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    UITextField *myIdTextfield;
    UITextField *myPasswordTextfield;

    UIView *backView;

}

@end

