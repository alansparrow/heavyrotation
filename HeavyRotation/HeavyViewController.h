//
//  HeavyViewController.h
//  HeavyRotation
//
//  Created by Alan Sparrow on 12/21/13.
//  Copyright (c) 2013 Alan Sparrow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeavyViewController : UIViewController
{
    IBOutlet UIImageView *imgView;
    IBOutlet UISlider *sld;
    IBOutlet UIButton *lBtn;
    IBOutlet UIButton *rBtn;
    IBOutlet UIButton *spcBtn;
}

- (void)setAutoresizingMask;

@end
