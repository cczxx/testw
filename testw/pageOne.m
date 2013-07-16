//
//  pageOne.m
//  testw
//
//  Created by 张昊磊 on 13-6-4.
//  Copyright (c) 2013年 com.zhanghaolei.cn. All rights reserved.
//

#import "pageOne.h"

@implementation pageOne

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor colorWithRed:211/255.0 green:211/255.0 blue:211/255.0 alpha:0.3];
        self.clipsToBounds = YES;
        //初始一个uiimagview
        //r屏下128*128相对看上去还成，图标有问题，应该是128*128全屏图标，现在因为图标在居中的位置，有空白，所以坐标设置有问题。
        UIImageView *weatherIconRT = [[UIImageView alloc] initWithFrame:CGRectMake(-15.0, -20.0, 128.0, 128.0)];
        //指定图片
        weatherIconRT.image = [UIImage imageNamed:@"fog.png"];
        //加载
        [self addSubview:weatherIconRT];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
