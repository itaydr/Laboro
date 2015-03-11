//
//  LBDataManager.h
//  Loboro
//
//  Created by Itay Dressler on 3/11/15.
//  Copyright (c) 2015 Loboro. All rights reserved.
//

#import <Foundation/Foundation.h>
@class LBJob;

@interface LBDataManager : NSObject

+ (LBJob*)createJobWithIndex:(NSInteger)index;

@end
