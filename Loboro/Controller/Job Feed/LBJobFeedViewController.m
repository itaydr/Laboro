//
//  LBJobFeedViewController.m
//  Loboro
//
//  Created by Itay Dressler on 3/11/15.
//  Copyright (c) 2015 Loboro. All rights reserved.
//

#import <ZLSwipeableView.h>
#import "LBJobFeedViewController.h"
#import "LBJobViewController.h"

@interface LBJobFeedViewController () <ZLSwipeableViewDataSource, ZLSwipeableViewDelegate>

@property (nonatomic, weak) IBOutlet ZLSwipeableView *swipeableView;
@property (nonatomic, assign)   NSInteger   indexOfView;
//@property (nonatomic, strong)

@end

@implementation LBJobFeedViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.swipeableView.dataSource = self;
    self.swipeableView.delegate = self;
}

#pragma mark - ZLSwipeableViewDelegate

- (void)swipeableView:(ZLSwipeableView *)swipeableView didSwipeLeft:(UIView *)view {
    NSLog(@"did swipe left");
}

- (void)swipeableView:(ZLSwipeableView *)swipeableView didSwipeRight:(UIView *)view {
    NSLog(@"did swipe right");
}

- (void)swipeableView:(ZLSwipeableView *)swipeableView didStartSwipingView:(UIView *)view atLocation:(CGPoint)location {
    NSLog(@"did start swiping at location: x %f, y %f", location.x, location.y);
}

- (void)swipeableView:(ZLSwipeableView *)swipeableView swipingView:(UIView *)view atLocation:(CGPoint)location  translation:(CGPoint)translation {
    NSLog(@"swiping at location: x %f, y %f, translation: x %f, y %f", location.x, location.y, translation.x, translation.y);
}

- (void)swipeableView:(ZLSwipeableView *)swipeableView didEndSwipingView:(UIView *)view atLocation:(CGPoint)location {
    NSLog(@"did end swiping at location: x %f, y %f", location.x, location.y);
}


#pragma mark - ZLSwipeableViewDataSource

- (UIView *)nextViewForSwipeableView:(ZLSwipeableView *)swipeableView {
    LBJobViewController *jobVC = [[LBJobViewController alloc] init];
    jobVC.index = self.indexOfView;
    jobVC.view.frame = self.swipeableView.bounds;
    self.indexOfView++;
    return jobVC.view;
}




@end
