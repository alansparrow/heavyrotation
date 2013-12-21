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

- (void)viewDidLoad
{
    [self setAutoresizingMask];
    [self willAnimateRotationToInterfaceOrientation:[self interfaceOrientation] duration:300];
    NSLog(@"%d", [self interfaceOrientation]);
}

- (void)setAutoresizingMask
{
    
    [imgView setAutoresizingMask:UIViewAutoresizingFlexibleHeight |
     UIViewAutoresizingFlexibleWidth];
    
    [sld setAutoresizingMask:UIViewAutoresizingFlexibleWidth |
     UIViewAutoresizingFlexibleBottomMargin];
    
    [lBtn setAutoresizingMask:UIViewAutoresizingFlexibleTopMargin |
     UIViewAutoresizingFlexibleRightMargin];
    
    [rBtn setAutoresizingMask:UIViewAutoresizingFlexibleTopMargin |
     UIViewAutoresizingFlexibleLeftMargin];
    
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)x duration:(NSTimeInterval)duration
{
    UIColor *color = nil;
    CGRect bounds = [[self view] bounds];
    // If the orientation is rotating to Portrait mode...
    if (UIInterfaceOrientationIsPortrait(x)) {
        // Put the button on the lefthand side of the HeavyViewController's view
        [spcBtn setCenter:CGPointMake(lBtn.center.x, bounds.origin.y + 400)];
        
        // The background color of the view will be purple
        color = [UIColor purpleColor];
    } else { // If the orientation is rotating to Landscape mode
        // Put the button on the righthand side of the view
        [spcBtn setCenter:CGPointMake(rBtn.center.x, bounds.size.height - 66)];
        
        // The background color of the view will be white
        color = [UIColor whiteColor];
        
    }
    [[self view] setBackgroundColor:color];
}


@end
