//
//  LBUser.h
//  Loboro
//
//  Created by Itay Dressler on 3/11/15.
//  Copyright (c) 2015 Loboro. All rights reserved.
//

#import "LBObject.h"

typedef enum {
    LBUserTypeEmployer = 0,
    LBUserTypeEmployee
} LBUserType;

@interface LBUser : LBObject

@property (nonatomic, assign)   LBUserType  type;

- (NSString*)profilePicImageName;
- (NSString*)backgroundImageName;

@end
