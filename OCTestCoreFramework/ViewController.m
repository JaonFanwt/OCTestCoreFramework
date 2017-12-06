//
//  ViewController.m
//  OCTestCoreFramework
//
//  Created by wtfan on 2017/12/5.
//  Copyright © 2017年 wtfan. All rights reserved.
//

#import "ViewController.h"

@import WtCore;
@import ReactiveCocoa;

#import "OCTestCoreFramework-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    @weakify(self);
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Title" message:@"message" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
    [alertView.wtDelegateProxy selector:@selector(alertView:clickedButtonAtIndex:) block:^(UIAlertView *alertView, NSUInteger index){
        NSLog(@"%s - %zd", __func__, index);
        @strongify(self);
        DemoWattpadViewController *toViewCtrl = [[DemoWattpadViewController alloc] initWithNibName:@"DemoWattpadViewController" bundle:nil];
        [self.navigationController pushViewController:toViewCtrl animated:YES];
        
    }];
    [alertView show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
