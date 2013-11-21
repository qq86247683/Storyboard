//
//  ViewController.m
//  Storyboard
//
//  Created by xingyun on 13-11-21.
//  Copyright (c) 2013年 xingyun. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    array = [[NSArray alloc]initWithObjects:@"123",@"ad",@"dg",@"76",@"cvbf", nil];
    row = [array indexOfObject:myString];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [array count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RecipeCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"RecipeCell"];
    }
    cell.textLabel.text = [array objectAtIndex:indexPath.row];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //判断启动的目标view是否为MyViewController
    if ([segue.identifier isEqualToString:@"push"]) {
        //得到tableView上面的位置,然后根据tableView的防范来得到cell上面的内容
        NSIndexPath *index = [self.myTableView indexPathForSelectedRow];
        NSString *string = [array objectAtIndex:index.row];
        MyViewController *myView = [segue destinationViewController];
        [myView setTitle:@"第二个视图"];
        [myView setText:string];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
