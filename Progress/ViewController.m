//
//  ViewController.m
//  Progress
//
//  Created by olddevil on 2019/1/19.
//  Copyright © 2019 olddevil. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet ProgressView *progressView;

@end

@implementation ViewController

- (IBAction)valueChanged:(UISlider *)sender {
    self.progressView.progress = sender.value;
}

@end
