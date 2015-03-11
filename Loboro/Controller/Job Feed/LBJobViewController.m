//
//  LBJobViewController.m
//  Loboro
//
//  Created by Itay Dressler on 3/11/15.
//  Copyright (c) 2015 Loboro. All rights reserved.
//

#import "LBJobViewController.h"
#import "UIColor+FlatColors.h"

@interface LBJobViewController ()

@property (nonatomic, strong) NSArray *colors;

@end

@implementation LBJobViewController

- (void)postInit {
    
    [self setUpView];
    [self initColors];
}

- (void)setUpView {
    // Shadow
    self.view.layer.shadowColor = [UIColor blackColor].CGColor;
    self.view.layer.shadowOpacity = 0.33;
    self.view.layer.shadowOffset = CGSizeMake(0, 1.5);
    self.view.layer.shadowRadius = 4.0;
    self.view.layer.shouldRasterize = YES;
    
    // Corner Radius
    self.view.layer.cornerRadius = 10.0;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark LBSwipeableViewController

- (void)postSetIndex {
    NSInteger colorIndex = self.index % self.colors.count;
    self.view.backgroundColor = [self colorForName:self.colors[colorIndex]];
}

#pragma mark Colors

- (UIColor *)colorForName:(NSString *)name
{
    NSString *sanitizedName = [name stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *selectorString = [NSString stringWithFormat:@"flat%@Color", sanitizedName];
    Class colorClass = [UIColor class];
    return [colorClass performSelector:NSSelectorFromString(selectorString)];
}

- (void)initColors {
    self.colors = @[@"Turquoise",
                    @"Green Sea",
                    @"Emerald",
                    @"Nephritis",
                    @"Peter River",
                    @"Belize Hole",
                    @"Amethyst",
                    @"Wisteria",
                    @"Wet Asphalt",
                    @"Midnight Blue",
                    @"Sun Flower",
                    @"Orange",
                    @"Carrot",
                    @"Pumpkin",
                    @"Alizarin",
                    @"Pomegranate",
                    @"Clouds",
                    @"Silver",
                    @"Concrete",
                    @"Asbestos"];
}

@end
