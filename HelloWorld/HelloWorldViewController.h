//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Bruno Diniz on 10/20/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txt_name;
@property (weak, nonatomic) IBOutlet UIButton *bt_hello;
@property (weak, nonatomic) IBOutlet UILabel *lb_text;

- (IBAction)change_inside:(id)sender;

@end
