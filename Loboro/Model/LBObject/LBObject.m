//
//  LBObject.m
//  Loboro
//
//  Created by Itay Dressler on 3/11/15.
//  Copyright (c) 2015 Loboro. All rights reserved.
//

#import "LBObject.h"

@implementation LBObject

- (instancetype)initWithId:(NSInteger)uid {
    if (self = [super init]) {
        self.uid = uid;
    }
    
    return self;
}

@end
