//
//  ViewController.m
//  Auto
//
//  Created by fox on 15/9/6.
//  Copyright (c) 2015年 fox. All rights reserved.
//

#import "ViewController.h"

#import "mansory.h"
#import "Masonry.h"

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view  =  [[UIView alloc] initWithFrame:CGRectMake(10, 100, 300, 200)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    WS(ws);
    
   // UIEdgeInsets padding = UIEdgeInsetsMake(10, 10, 10, 10);
    
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
       // make.edges.equalTo(self.view).with.insets(padding);
        make.center.equalTo(ws.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
