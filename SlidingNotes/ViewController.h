//
//  ViewController.h
//  SlidingNotes
//
//  Created by Alexis Gallagher on 2012-12-11.
//  Copyright (c) 2012 Foxtrot Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *noteLabelView;
- (IBAction)handleCLick:(id)sender;

@end
