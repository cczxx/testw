//
//  MainViewController.h
//  testw
//
//  Created by 张昊磊 on 13-5-16.
//  Copyright (c) 2013年 com.zhanghaolei.cn. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>

{
    IBOutlet UILabel *NowTime;
    IBOutlet UILabel *NowDate;
    
    IBOutlet UILabel *FontShow;
    
    IBOutlet UIImageView *testPicture;

}

- (IBAction)showInfo:(id)sender;

- (void)timerFireMethod:(NSTimer*)theTimer;



@end
