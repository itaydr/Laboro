//
//  LBJob.m
//  Loboro
//
//  Created by Itay Dressler on 3/11/15.
//  Copyright (c) 2015 Loboro. All rights reserved.
//

#import "LBJob.h"
#import "LBUser.h"


@implementation LBJob

- (NSString *)mainImageName {
    return [self.owner profilePicImageName];
}

- (NSString *)backgroundImageName {
    return [self.owner backgroundImageName];
}

@end
