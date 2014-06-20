//
//  TFStatusBarController.h
//  instameet
//
//  Created by Dmitry Ivanov on 19.06.14.
//  Copyright (c) 2014 topface. All rights reserved.
//

#import "MMDrawerController.h"


@interface TFStatusBarController : NSObject

@property (nonatomic, weak) UINavigationController *centerVC;

@property (nonatomic, strong) UIView *statusbarBGLeft;
@property (nonatomic, strong) UIView *statusbarBGRight;

@property (nonatomic) UIStatusBarStyle statusbarStyleForCenterBG;
@property (nonatomic) UIStatusBarStyle statusbarStyleForLeftBG;
@property (nonatomic) UIStatusBarStyle statusbarStyleForRightBG;

- (void)interactiveControllerMoving:(MMDrawerController *)controller forSide:(MMDrawerSide)side withPercent:(CGFloat)percent;

@end
