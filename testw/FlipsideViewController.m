//
//  FlipsideViewController.m
//  testw
//
//  Created by 张昊磊 on 13-5-16.
//  Copyright (c) 2013年 com.zhanghaolei.cn. All rights reserved.
//

#import "FlipsideViewController.h"

#import "pageOne.h"
#import "pageTwo.h"
#import "pageThree.h"

@interface FlipsideViewController ()

@end

@implementation FlipsideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    

    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
    
    self.tutorialView.contentSize = CGSizeMake(960, 240);
    
    self.pageControl.numberOfPages = 3;
    self.pageControl.currentPage = 0;

    pageOne *pageOnesheet = [[pageOne alloc] initWithFrame:CGRectMake(0, 0, 320, 240)];
    [self.tutorialView addSubview:pageOnesheet];


    pageTwo *pageTwosheet = [[pageTwo alloc] initWithFrame:CGRectMake(320, 0, 640, 240)];
    [self.tutorialView addSubview:pageTwosheet];
    
    pageThree *pageThreesheet = [[pageThree alloc] initWithFrame:CGRectMake(640, 0, 640, 240)];
    [self.tutorialView addSubview:pageThreesheet];
    
    
 

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}



#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    CGPoint contentOffset = self.tutorialView.contentOffset;
    NSInteger currentPage = contentOffset.x / 320;
    
    self.pageControl.currentPage = currentPage;
    NSLog(@"%d",currentPage);
}


@end
