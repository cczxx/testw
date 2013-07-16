//
//  FlipsideViewController.h
//  testw
//
//  Created by 张昊磊 on 13-5-16.
//  Copyright (c) 2013年 com.zhanghaolei.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController
{

    IBOutlet UILabel *TempLabel2;
    
}


@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;


@property (retain, nonatomic) IBOutlet UIScrollView *tutorialView;
@property (retain, nonatomic) IBOutlet UIPageControl *pageControl;


- (IBAction)done:(id)sender;

@end
