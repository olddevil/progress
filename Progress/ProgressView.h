//
//  ProgressView.h
//  Progress
//
//  Created by olddevil on 2019/1/19.
//  Copyright © 2019 olddevil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgressView : UIView

@property (nonatomic, assign) CGFloat progress;
@property (nonatomic, weak) IBOutlet UILabel *progressLabel;

@end
