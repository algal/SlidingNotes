//
//  ViewController.m
//  SlidingNotes
//
//  Created by Alexis Gallagher on 2012-12-11.
//  Copyright (c) 2012 Foxtrot Studios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleCLick:(id)sender {

  UILabel * newNote = [[UILabel alloc] initWithFrame:CGRectOffset(self.noteLabelView.frame, 300, 0)];
  
  newNote.text = @"NEW NOTE";
  
  [UIView animateWithDuration:2.0f
                        delay:0
                      options:UIViewAnimationCurveEaseInOut
                   animations:^{
                     self.noteLabelView.center = CGPointMake(self.noteLabelView.center.x-300, self.noteLabelView.center.y);
                     [self.view addSubview:newNote];
                     newNote.center = CGPointMake(newNote.center.x-300, newNote.center.y);
                   }
                   completion:^(BOOL finished) {
                     [self.noteLabelView removeFromSuperview];
                     self.noteLabelView = newNote;
                   }];
}
@end
