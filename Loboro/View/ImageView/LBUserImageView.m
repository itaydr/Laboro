//
//  LBUserImageView.m
//  Loboro
//
//  Created by Itay Dressler on 3/11/15.
//  Copyright (c) 2015 Loboro. All rights reserved.
//

#import "LBUserImageView.h"

@implementation LBUserImageView

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setUp];
    }
    
    return self;
}

- (void)setUp {
    //[self autoConstrainAttribute:ALAttributeRight toAttribute:ALAttributeHeight ofView:self];
    // Become round
    self.layer.cornerRadius = self.frame.size.width / 2;
}

@end
