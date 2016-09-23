//
//  ViewController.m
//  LoginScreen
//
//  Created by Mac on 19/09/16.
//  Copyright © 2016 Akshay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGFloat screenWidth =[[UIScreen mainScreen]bounds].size.width;
    
    CGFloat screenHeight =[[UIScreen mainScreen]bounds].size.height;
    
    self.view.backgroundColor = [UIColor grayColor];
    
    backView = [[UIView alloc]initWithFrame:CGRectMake(10, kHeightOfStatusBar, screenWidth - 20, screenHeight-50)];
    
    backView.backgroundColor = [UIColor colorWithRed:0.5 green:.2 blue:.2 alpha:1];
    
    backView.layer.borderColor =[UIColor whiteColor].CGColor;
    
    backView.layer.borderWidth = 3;
    
    
    [self.view addSubview:backView];
    

    

    myIdTextfield = [[UITextField alloc]initWithFrame:CGRectMake(50, (screenHeight/2)-80, 270, kAllUIElementHeight)];
    
    [myIdTextfield setBorderStyle:UITextBorderStyleBezel];
    
    [myIdTextfield setPlaceholder:@"Enter ID:"];
    
    [myIdTextfield setBorderStyle:UITextBorderStyleRoundedRect];
    
    [myIdTextfield setFont:[UIFont systemFontOfSize:25]];
    
    myIdTextfield.delegate = self;
    
    [self.view addSubview:myIdTextfield];
    
    
    
    myPasswordTextfield = [[UITextField alloc]initWithFrame:CGRectMake(50, (screenHeight/2)-30, 270, kAllUIElementHeight)];
    
    [myPasswordTextfield setBorderStyle:UITextBorderStyleBezel];
    
    [myPasswordTextfield setPlaceholder:@"Password:"];
    
    [myPasswordTextfield setBorderStyle:UITextBorderStyleRoundedRect];
    
    [myPasswordTextfield setFont:[UIFont systemFontOfSize:25]];
    
    myPasswordTextfield.delegate = self;
    
    [myPasswordTextfield setSecureTextEntry : YES];
    
    [self.view addSubview:myPasswordTextfield];
    
    
    UIButton *buttonClear = [[UIButton alloc]initWithFrame:CGRectMake(330, (screenHeight/2)-87, kAllUIElementHeight+15, kAllUIElementHeight+15)];
    
    buttonClear.backgroundColor=[UIColor blackColor];
    
    buttonClear.layer.cornerRadius =50;
    
    buttonClear.layer.borderColor = [UIColor whiteColor].CGColor;
    
    buttonClear.layer.borderWidth = 3;
    
    [buttonClear setTitle:@"<" forState:UIControlStateNormal];
    
    [buttonClear setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    buttonClear.titleLabel.font=[UIFont systemFontOfSize:30];
    
    [buttonClear addTarget:self action:@selector(handelClear) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonClear];
    

    UIButton *buttonLogin = [[UIButton alloc]initWithFrame:CGRectMake(250, (screenHeight/2)+30, 100, kAllUIElementHeight)];
    
    buttonLogin.backgroundColor=[UIColor blueColor];
    
   // buttonLogin.layer.cornerRadius =14;
    
    buttonLogin.layer.borderColor = [UIColor whiteColor].CGColor;
    
    buttonLogin.layer.borderWidth = 3;
    
    [buttonLogin setTitle:@"Login" forState:UIControlStateNormal];
    
    [buttonLogin setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    buttonLogin.titleLabel.font=[UIFont systemFontOfSize:30];
    
    [buttonLogin addTarget:self action:@selector(handlerLogin) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonLogin];
    

}
-(void)handlerLogin {
    
}

-(void)handelClear {
    myIdTextfield.text=@"";
    myPasswordTextfield.text=@"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}


@end
