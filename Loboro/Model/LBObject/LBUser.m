//
//  LBUser.m
//  Loboro
//
//  Created by Itay Dressler on 3/11/15.
//  Copyright (c) 2015 Loboro. All rights reserved.
//

#import "LBUser.h"

@implementation LBUser

- (NSString *)profilePicImageName {
    NSString *imageName = [NSString stringWithFormat:@"%@_profile_%ld", [self imageNamePrefix], (long)self.uid];
    return imageName;
}

- (NSString *)backgroundImageName {
    return [NSString stringWithFormat:@"%@_background_%ld", [self imageNamePrefix], (long)self.uid];
}

- (NSString*)imageNamePrefix {
    return self.type == LBUserTypeEmployee ? @"employee" : @"employer" ;
}

@end
