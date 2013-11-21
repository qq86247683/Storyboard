//
//  ViewController.h
//  Storyboard
//
//  Created by xingyun on 13-11-21.
//  Copyright (c) 2013年 xingyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *array;
    NSString *myString;
    NSInteger row;
}
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end
