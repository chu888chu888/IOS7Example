//
//  MyViewController2.m
//  UIViewControllerDemo
//
//  Created by chuguangming on 14-8-4.
//  Copyright (c) 2014年 chu. All rights reserved.
//

#import "MyViewController2.h"
#import "ModelDialog.h"
@interface MyViewController2 ()

@end

@implementation MyViewController2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title=@"MyViewController2";
        UIImage *icon=[UIImage imageNamed:@"free-badge-32.png"];
        self.tabBarItem=[[UITabBarItem alloc] initWithTitle:@"Hello" image:icon tag:0];
    }
    return self;
}
-(void)buttonDidPush
{
    id dialog=[[ModelDialog alloc] init];
    [self presentModalViewController:dialog animated:YES];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Do any additional setup after loading the view.
    UILabel *label=[[UILabel alloc] initWithFrame:self.view.bounds];
    label.text=@"MyViewController2";
    label.textAlignment=UITextAlignmentCenter;
    label.autoresizingMask=UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    //label.backgroundColor=[UIColor blueColor];
    [self.view addSubview:label];
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"模式对话框" forState:UIControlStateNormal];
    [button sizeToFit];
    CGPoint centerPoint=self.view.center;
    centerPoint.y+=50;
    button.center=centerPoint;
    button.autoresizingMask=UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    [button addTarget:self action:@selector(buttonDidPush) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
