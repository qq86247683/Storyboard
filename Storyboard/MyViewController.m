//
//  MyViewController.m
//  Storyboard
//
//  Created by xingyun on 13-11-21.
//  Copyright (c) 2013年 xingyun. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.myTextField.text = self.string;
}
//先执行setText方法来得到string的值。接着在执行viewDidLoad里面的方法去改变myTextField的值

/*
    当导航到MyViewController之前（已经创建了MyViewController对象，但还没调用 MyViewController.viewDidLoad方法）系统会调用prepareForSegue:方法。
    且可以通过 [seguedestinationViewController]方法获取目标视图的对象，并调用视图对象中的方法设置任何的参数值。
    这里在 MyViewController.m中实现 setText方法，用于设置mText变量，然后在 MyViewController.viewDidLoad方法中通过mText变量值设置UITextField控件的显示文本。
 */
-(void)setText:(NSString *)str
{
    self.string = str;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
