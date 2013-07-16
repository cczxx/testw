//
//  MainViewController.m
//  testw
//
//  Created by 张昊磊 on 13-5-16.
//  Copyright (c) 2013年 com.zhanghaolei.cn. All rights reserved.
//

#import "MainViewController.h"
#import "SBJsonParser.h"

#import "pageOne.h"
#import "pageTwo.h"
#import "pageThree.h"



@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

////取未来6天天气和气象指数
//    NSURL *URL =[NSURL URLWithString:@"http://m.weather.com.cn/data/101010100.html"];
//    NSError *error;
//    NSString  *stringFromFileAtURL = [[NSString alloc]
//                                     initWithContentsOfURL:URL
//                                     encoding:NSUTF8StringEncoding
//                                     error:&error];
//    if (stringFromFileAtURL==NULL)
//    {
//        
//        NSLog (@"net error!!");
//        
//    }
//    else
//    {
//        NSLog (@"netx 6 day weather information download start!!");
//        
//        //NSLog(@"srt=%@",stringFromFileAtURL);
//        
//        SBJsonParser *parser = [[SBJsonParser alloc]init];
//        NSDictionary *json = [parser objectWithString:stringFromFileAtURL];
//       // NSLog(@"dic = %@",json);
//        
//        
//        NSDictionary *weatherinfo = [json objectForKey:@"weatherinfo"];
//        //NSLog(@"weatherinfo  =  %@",weatherinfo);
//        
////        NSString *city = [weatherinfo objectForKey:@"city"];
////        NSLog(@"city  =  %@",city);
//        NSString *realweatherinfo = [weatherinfo objectForKey:@"img_title_single"];
//        NSLog(@"realweatherinfo = %@",realweatherinfo);
//
//        
// //根据返回的天气信息显示对应的图片
//        
//        NSString *picname;
//        NSString *exname = @".png";
//        picname = [realweatherinfo stringByAppendingString:exname];
//
//        NSLog(@"picname = %@",picname);
//        
//        UIImageView *realPicture = [[UIImageView alloc] initWithFrame:CGRectMake(10,100,80,80)];
//        [realPicture setImage:[UIImage imageNamed:picname]];
//        [self.view addSubview:realPicture];
//
//    }
//
////取实时天气
//    NSURL *realTimeURL =[NSURL URLWithString:@"http://www.weather.com.cn/data/sk/101010100.html"];
//    NSError *realTimeerror;
//    NSString  *realTimestringFromFileAtURL = [[NSString alloc]
//                                      initWithContentsOfURL:realTimeURL
//                                      encoding:NSUTF8StringEncoding
//                                      error:&realTimeerror];
//    if (realTimestringFromFileAtURL==NULL)
//    {
//        
//        NSLog (@"net error!!");
//        
//    }
//    else
//    {
//        NSLog (@"realtime weather information download start!!");
//        
//        //NSLog(@"srt=%@",realTimestringFromFileAtURL);
//        
//        SBJsonParser *realtimeparser = [[SBJsonParser alloc]init];
//        NSDictionary *realtimejson = [realtimeparser objectWithString:realTimestringFromFileAtURL];
//        //NSLog(@"dic = %@",realtimejson);
//        
//        
//        NSDictionary *realTimeweatherinfo = [realtimejson objectForKey:@"weatherinfo"];
//        //NSLog(@"weatherinfo  =  %@",realTimeweatherinfo);
//        
//        NSString *realTimecity = [realTimeweatherinfo objectForKey:@"city"];
//        NSLog(@"city  =  %@",realTimecity);
//    }
//    
//
//    
    
//取PM25功能，天朝数据
    
//    NSURL *pM25URL =[NSURL URLWithString:@"http://www.pm25.in/api/querys/pm2_5.json?city=beijing&token=5j1znBVAsnSf5xQyNQyq"];
//    NSError *pM25error;
//    NSString  *pM25stringFromFileAtURL = [[NSString alloc]
//                                              initWithContentsOfURL:pM25URL
//                                              encoding:NSUTF8StringEncoding
//                                              error:&pM25error];
//    if (pM25stringFromFileAtURL==NULL)
//    {
//        
//        //NSLog(@"srt=%@",pM25stringFromFileAtURL);
//        NSLog (@"net error!!");
//        
//    }
//    else
//    {
//        NSLog (@"start!!");
//        
//        //NSLog(@"srt=%@",pM25stringFromFileAtURL);
//
//    }
//    
//    int pm25urlCount = [pM25stringFromFileAtURL length];   
//    //NSLog(@"count = %d",pm25urlCount);
//
//    int locateAtindex = pm25urlCount - 1;
//    int tempindex = pm25urlCount - 1;
//    //NSLog(@"locateatinde = %d",locateAtindex);
//    
//    char TempChar = [pM25stringFromFileAtURL characterAtIndex:locateAtindex];
//    //NSLog(@"tempchar = %c",TempChar);
//    
//    do {
//        
//        locateAtindex = tempindex;
//        TempChar = [pM25stringFromFileAtURL characterAtIndex:locateAtindex];
//        tempindex = tempindex - 1;
//        
//        //NSLog(@"%c\n",TempChar);
//
//    } while (TempChar != '{');
//    
//    //NSLog(@"locateAtindex = %d",locateAtindex);
//    
//    NSString *tempHeadinfo = @"{\"pm25info\":",*tempTail = @"}";
//    
//    int temp_length = pm25urlCount - 1 -locateAtindex;
//    
//    NSString *pm25CountryDate_temp = [pM25stringFromFileAtURL substringWithRange:NSMakeRange(locateAtindex, temp_length)];
//    
//    NSString *pm25cuntryDate_Release = [tempHeadinfo stringByAppendingString:pm25CountryDate_temp];
//    
//    pm25cuntryDate_Release = [pm25cuntryDate_Release stringByAppendingString:tempTail];
//    
//    //NSLog(@"%@",pm25cuntryDate_Release);
//    
//
//    SBJsonParser *pM25parser = [[SBJsonParser alloc]init];
//    NSDictionary *pM25json = [pM25parser objectWithString:pm25cuntryDate_Release];
//    
//    //NSLog(@"json = %@",pM25json);
//    
//    NSDictionary *pM25Dic = [pM25json objectForKey:@"pm25info"];
//    //NSLog(@"dic  =  %@",pM25Dic);
//    
//    NSString *pm25Date = [pM25Dic objectForKey:@"pm2_5"];
//    NSLog(@"Pm2.5  =  %@",pm25Date);
//    

    
//获取pm2.5，有天朝的钦定数据和美帝的反人类数据，gogogo！现在只能做北京的。别的地方的还得再想想，先把反人类的数据做出来，至于钦定的数据，呵呵呵呵，看吧。。。。
    
    

    
//    NSURL *pm25DateURL =[NSURL URLWithString:@"http://www.stateair.net/web/post/1/1.html"];
//    NSError *pm25error;
//    NSString  *pm25DatestringFromFileAtURL = [[NSString alloc]
//                                              initWithContentsOfURL:pm25DateURL
//                                              encoding:NSUTF8StringEncoding
//                                              error:&pm25error];
//    if (pm25DatestringFromFileAtURL==NULL)
//    {
//        
//        NSLog (@"net error!!");
//        
//    }
//    else
//    {
//        NSLog (@"pm25 usa date download start!!");
//    }
//    
//    //NSLog(@"%@",pm25DatestringFromFileAtURL);
//    
//    NSString *Keyword2 = @"Concentration:",*KeyWord3 = @"µg/m³";
//    
//    NSRange pm25rang1 = [pm25DatestringFromFileAtURL rangeOfString:Keyword2];
//    
//    NSString *pm25temptime = [pm25DatestringFromFileAtURL substringFromIndex:pm25rang1.location + pm25rang1.length];
//    
//    NSRange pm25rang2 = [pm25temptime rangeOfString:KeyWord3];
//    
//    int pm25datelength = pm25rang2.location;
//    
//    NSString *pm25date = [pm25temptime substringWithRange:NSMakeRange(0, pm25datelength)];
//    
//    NSLog(@"%@",pm25date);
//
//    
//    
//    //从http页面上获取日升日落时间
//    
//    NSURL *SunRsingURL =[NSURL URLWithString:@"http://www.weather.com.cn/weather/101010100.shtml"];
//    NSError *SunRsingerror;
//    NSString  *SunRsingstringFromFileAtURL = [[NSString alloc]
//                                              initWithContentsOfURL:SunRsingURL
//                                              encoding:NSUTF8StringEncoding
//                                              error:&SunRsingerror];
//    if (SunRsingstringFromFileAtURL==NULL)
//    {
//        
//        NSLog (@"net error!!");
//        
//    }
//    else
//    {
//        NSLog (@"the sun down/up time download start!!");
//    }
//    
//    
//    //第一种实现方式，问题在于我已经实现了。
//    NSString *KeyWord1 = @"font-size:16px;color:#000;font-weight:bold;";
//    
//    
//    NSString *todaySunupTime,*todaySundowntime,*tomorrowSunupTime,*tomorrowSundowntime;
//    
//    for (int i=1; i<=4; i++) {
//        NSRange rang = [SunRsingstringFromFileAtURL rangeOfString:KeyWord1];
//        int TempLocate = rang.location + rang.length + 2;
//        
//        if(i==1){
//            todaySunupTime = [SunRsingstringFromFileAtURL substringWithRange:NSMakeRange(TempLocate, 5)];
//        }else
//        {
//            if (i==2) {
//                todaySundowntime = [SunRsingstringFromFileAtURL substringWithRange:NSMakeRange(TempLocate, 5)];
//            }else{
//                
//                if(i==3){
//                    tomorrowSunupTime = [SunRsingstringFromFileAtURL substringWithRange:NSMakeRange(TempLocate, 5)];
//                }
//                else
//                    tomorrowSundowntime = [SunRsingstringFromFileAtURL substringWithRange:NSMakeRange(TempLocate, 5)];
//            }
//            
//        }
//        
//        NSString *temptime = [SunRsingstringFromFileAtURL substringFromIndex:TempLocate + 5];
//        SunRsingstringFromFileAtURL = nil;
//        SunRsingstringFromFileAtURL = [temptime substringFromIndex:0];
//        
//    }
//    
//    
//    NSLog(@"\ntodaysunup = %@\ntodaysundown = %@\ntomorrowsunup = %@\ntomorrowsundown = %@\n",tomorrowSunupTime,todaySundowntime,tomorrowSunupTime,tomorrowSundowntime);
//    
    
    
    //时钟
    
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerFireMethod:) userInfo:nil repeats:YES];//使用timer定时，每秒触发一次，然后就是写selector了。

//    //字体实验，得出“HelveticaNeue-Light”字体为所需要效果字体    
//    FontShow.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:24];
//    FontShow.text = @"Today";

//    //初始一个lebal
//    UILabel *TitleLocate = [[UILabel alloc]initWithFrame:CGRectMake(0.0, 14.0, 320.0, 24.0)];
//    //设置字的内容
//    TitleLocate.text = @"Beijing-北京";
//    //设置居中
//    TitleLocate.textAlignment = NSTextAlignmentCenter;
//    //设置字的颜色和背景色
//    TitleLocate.textColor = [UIColor whiteColor];
//    TitleLocate.backgroundColor = [UIColor clearColor];
//    //设置字的阴影
//    //TitleLocate.shadowColor = [UIColor grayColor];
//    //TitleLocate.shadowOffset = CGSizeMake(1.0,1.0);
//    //设置字体
//    TitleLocate.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:24];
//    TitleLocate.numberOfLines = 1;
//    TitleLocate.adjustsFontSizeToFitWidth = YES;
//    
//    //加载进来
//    [self.view addSubview:TitleLocate];

    
//    //图标实验，预计效果为R屏128*128，普通屏应为64*64
//    //初始一个uiimagview
//    //r屏下128*128相对看上去还成
//    UIImageView *weatherIconRT = [[UIImageView alloc] initWithFrame:CGRectMake(40.0, 30.0, 128.0, 128.0)];
//    //指定图片
//    weatherIconRT.image = [UIImage imageNamed:@"fog.png"];
//    //加载
//    [self.view addSubview:weatherIconRT];

    

    


    
    
    
//  做一个在屏幕内滚动的效果
    //尝试着加一个scrollview来做一个容器试试拖动
    
    //初始化infoMation
    UIScrollView *infoMation = [[UIScrollView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
    //设置可视区域，数值为宽度和显示总长度，而前者则是确定显示的区域
    infoMation.contentSize = CGSizeMake(320.0, 1024.0);
    //设置背景颜色
    infoMation.backgroundColor = [UIColor clearColor];
    //设置滚动
    infoMation.scrollEnabled = YES;
    //显示滚动条
    infoMation.showsVerticalScrollIndicator = NO;
    //设置反弹
    infoMation.bounces = YES;
    //设置碰边界反弹
    infoMation.alwaysBounceVertical = YES;
    
   
    //在scrollview里加载三个view
    //第一个
    pageOne *pageOnesheet = [[pageOne alloc]initWithFrame:CGRectMake(5.0, 5.0, 310.0, 200)];
    [infoMation addSubview:pageOnesheet];
    //第二个
    pageTwo *pageTwosheet = [[pageTwo alloc]initWithFrame:CGRectMake(5.0, 225.0, 310.0, 400)];
    [infoMation addSubview:pageTwosheet];
    //第三个
    pageThree *pageThreesheet = [[pageThree alloc]initWithFrame:CGRectMake(5.0, 650.0, 310.0, 300)];
    [infoMation addSubview:pageThreesheet];

    //加载进来
    [self.view addSubview:infoMation];
    
    
 }

- (void)timerFireMethod:(NSTimer*)theTimer
{

    NSDateFormatter *timeFormator = [[NSDateFormatter alloc] init];
    //dateFormator.dateFormat = @"yyyy-MM-dd  HH:mm:ss";
    timeFormator.dateFormat = @"HH:mm:ss";
    NSString *Time = [timeFormator stringFromDate:[NSDate date]];
    
    NSDateFormatter *dateFormator = [[NSDateFormatter alloc] init];
    //dateFormator.dateFormat = @"yyyy-MM-dd  HH:mm:ss";
    dateFormator.dateFormat = @"yyyy-MM-dd";
    NSString *Date = [dateFormator stringFromDate:[NSDate date]];
    
    
//先不显示实时时间，等想好怎么放时再说吧
//    NowTime.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:12];
//    NowTime.text = Time;
//    NowDate.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:12];
//    NowDate.text = Date;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)showInfo:(id)sender
{    
    FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideViewController" bundle:nil];
    controller.delegate = self;
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:controller animated:YES completion:nil];
}

@end
