//
//  LBDataManager.m
//  Loboro
//
//  Created by Itay Dressler on 3/11/15.
//  Copyright (c) 2015 Loboro. All rights reserved.
//

#import "LBDataManager.h"
#import "LBJob.h"
#import "LBUser.h"

@implementation LBDataManager

+ (LBJob*)createJobWithIndex:(NSInteger)index {
    LBUser *user = [[LBUser alloc] initWithId:index];
    user.type = LBUserTypeEmployer;
    
    LBJob *job = [[LBJob alloc] initWithId:index];
    job.owner = user;
    
    return job;
}

@end
