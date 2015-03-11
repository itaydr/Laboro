//
//  LBObject.h
//  Loboro
//
//  Created by Itay Dressler on 3/11/15.
//  Copyright (c) 2015 Loboro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LBObject : NSObject

@property (nonatomic, assign)   NSInteger   uid;

- (instancetype)initWithId:(NSInteger)uid;

@end
