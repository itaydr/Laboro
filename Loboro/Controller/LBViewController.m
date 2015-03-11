//
//  LBViewController.m
//  Loboro
//
//  Created by Itay Dressler on 3/11/15.
//  Copyright (c) 2015 Loboro. All rights reserved.
//

#import "LBViewController.h"

@interface LBViewController ()

@end

@implementation LBViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        if (![self postInitWithCoderSetup]) {
            [self postInit];
        }
    }
    
    return self;
}

- (instancetype)init {
    if (self = [super init]) {
        [self postInit];
    }
    
    return self;
}

- (BOOL)postInitWithCoderSetup {
    return NO;
}

- (void)postInit {

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
