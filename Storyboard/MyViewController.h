//
//  MyViewController.h
//  Storyboard
//
//  Created by xingyun on 13-11-21.
//  Copyright (c) 2013年 xingyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *myTextField;

@property (strong,nonatomic) NSString *string;

-(void)setText:(NSString *)str;

@end
