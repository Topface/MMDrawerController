//
//  TFStatusBarController.m
//  instameet
//
//  Created by Dmitry Ivanov on 19.06.14.
//  Copyright (c) 2014 topface. All rights reserved.
//

#import "TFStatusBarController.h"

#define PERCENTAGE_FOR_CHANGING         0.66


@implementation TFStatusBarController


- (void)interactiveControllerMoving:(MMDrawerController *)controller forSide:(MMDrawerSide)side withPercent:(CGFloat)percent {
    
    UIView *statusbarBG;
    if (side == MMDrawerSideLeft) {
        if (_statusbarBGRight.alpha)
            _statusbarBGRight.alpha = 0;
        statusbarBG = _statusbarBGLeft;
    }
    else if (side == MMDrawerSideRight) {
        if (_statusbarBGLeft.alpha)
            _statusbarBGLeft.alpha = 0;
        statusbarBG = _statusbarBGRight;
    }
    statusbarBG.alpha = percent;
    
    UIStatusBarStyle sideStyle;
    if (side == MMDrawerSideLeft)
        sideStyle = self.statusbarStyleForLeftBG;
    else if (side == MMDrawerSideRight)
        sideStyle = self.statusbarStyleForRightBG;
    else
        sideStyle = UIStatusBarStyleDefault;
    
    if (percent > PERCENTAGE_FOR_CHANGING)
        [[UIApplication sharedApplication] setStatusBarStyle:sideStyle animated:YES];
    else
        [[UIApplication sharedApplication] setStatusBarStyle:self.statusbarStyleForCenterBG animated:YES];
}


#pragma mark - Setters & Getters

- (void)setStatusbarBGLeft:(UIView *)statusbarBGLeft {
    
    _statusbarBGLeft = statusbarBGLeft;
    statusbarBGLeft.alpha = 0.;
    [_centerVC.navigationBar addSubview:statusbarBGLeft];
}

- (void)setStatusbarBGRight:(UIView *)statusbarBGRight {
    
    _statusbarBGRight = statusbarBGRight;
    statusbarBGRight.alpha = 0.;
    [_centerVC.navigationBar addSubview:statusbarBGRight];
}


@end
