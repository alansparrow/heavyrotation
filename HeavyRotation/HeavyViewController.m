//
//  HeavyViewController.m
//  HeavyRotation
//
//  Created by Alan Sparrow on 12/21/13.
//  Copyright (c) 2013 Alan Sparrow. All rights reserved.
//

#import "HeavyViewController.h"

@interface HeavyViewController ()

@end

@implementation HeavyViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)x
{
    // Return YES if incoming orientation is Portrait
    // or either of the Lanscapes, otherwise, return NO
    //return (x == UIInterfaceOrientationPortrait) || UIInterfaceOrientationIsLandscape(x);
    //return TRUE;
    
    return UIInterfaceOrientationIsLandscape(x);
}

@end
