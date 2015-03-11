//
//  LBWsipeableViewController.m
//  Loboro
//
//  Created by Itay Dressler on 3/11/15.
//  Copyright (c) 2015 Loboro. All rights reserved.
//

#import "LBWsipeableViewController.h"

@interface LBWsipeableViewController ()

@end

@implementation LBWsipeableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setIndex:(NSInteger)index {
    _index = index;
    [self postSetIndex];
}

- (void)postSetIndex {
    
}

@end
