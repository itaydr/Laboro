//
//  LBJob.h
//  Loboro
//
//  Created by Itay Dressler on 3/11/15.
//  Copyright (c) 2015 Loboro. All rights reserved.
//

#import "LBObject.h"

@class LBUser;

typedef enum {
    LBExperienceRangeNone,
    LBExperienceRangeMin,
    LBExperienceRangeMid,
    LBExperienceRangeMax
} LBExperienceRange;

@interface LBJob : LBObject

@property (nonatomic, assign)   LBExperienceRange   experioenceRange;
@property (nonatomic, strong)   LBUser              *owner;

- (NSString*)mainImageName;
- (NSString*)backgroundImageName;



@end
