//
//  ViewController.m
//  LineChartRoi
//
//  Created by yehengjia on 2016/1/8.
//  Copyright © 2016年 mitake. All rights reserved.
//

#import "ViewController.h"

#import "LineChartView.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *anchorDataAry1;

@property (nonatomic, strong) NSMutableArray *anchorDataAry2;

@property (nonatomic, strong) LineChartView *lineChartView1;

@property (nonatomic, strong) LineChartView *lineChartView2;

@end

@interface ViewController ()

@end

@implementation ViewController

#if !__has_feature(objc_arc)

-(void) dealloc
{
    OBJC_RELEASE(self.anchorDataAry1);
    OBJC_RELEASE(self.lineChartView1);
    
    OBJC_RELEASE(self.anchorDataAry2);
    OBJC_RELEASE(self.lineChartView2);
    
    [super dealloc];
    
}

#endif

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.anchorDataAry1 = [NSMutableArray array];
    self.anchorDataAry2 = [NSMutableArray array];
    
    NSDictionary *dicData1 = @{@"cost":@"1777869.0000", @"dd":@"2015/07/01", @"roi":@"-4.532465"};
    NSDictionary *dicData2 = @{@"cost":@"1801928.0000", @"dd":@"2015/07/26", @"roi":@"-7.061070"};
    NSDictionary *dicData3 = @{@"cost":@"1547810.0000", @"dd":@"2015/07/27", @"roi":@"4.557859"};
    NSDictionary *dicData4 = @{@"cost":@"1325624.0000", @"dd":@"2015/07/28", @"roi":@"-1.777140"};
    NSDictionary *dicData5 = @{@"cost":@"1385683.0000", @"dd":@"2015/08/12", @"roi":@"-28.617526"};
    NSDictionary *dicData6 = @{@"cost":@"1462692.0000", @"dd":@"2015/08/19", @"roi":@"-19.157361"};
    NSDictionary *dicData7 = @{@"cost":@"1530751.0000", @"dd":@"2015/08/28", @"roi":@"-18.602587"};
    NSDictionary *dicData8 = @{@"cost":@"1891987.0000", @"dd":@"2015/10/14", @"roi":@"-17.421393"};
    NSDictionary *dicData9 = @{@"cost":@"2114046.0000", @"dd":@"2015/10/27", @"roi":@"-17.724448"};
    NSDictionary *dicData10 = @{@"cost":@"1141433.0000", @"dd":@"2015/12/22", @"roi":@"-0.227170"};
    NSDictionary *dicData11 = @{@"cost":@"1284442.0000", @"dd":@"2015/12/30", @"roi":@"0.098486"};
    NSDictionary *dicData12 = @{@"cost":@"2336105.0000", @"dd":@"2016/01/11", @"roi":@"18.851121"};
    
    NSDictionary *dicData13 = @{@"cost":@"222059.0000", @"dd":@"2015/10/27", @"roi":@"19.697918"};
    NSDictionary *dicData14 = @{@"cost":@"222059.0000", @"dd":@"2015/10/28", @"roi":@"18.887322"};
    NSDictionary *dicData15 = @{@"cost":@"222059.0000", @"dd":@"2015/10/29", @"roi":@"17.266131"};
    
    NSMutableArray *chartListAry1 = [NSMutableArray arrayWithObjects:dicData1, dicData2, dicData3, dicData4, nil];
    
    NSMutableArray *chartListAry2 = [NSMutableArray arrayWithObjects:dicData1, dicData2, dicData3, dicData4, dicData5, dicData6, dicData7, dicData8, dicData9, dicData10, dicData11, dicData12, nil];
    
    NSMutableArray *chartListAry3 = [NSMutableArray arrayWithObjects:dicData13, dicData14, dicData15, nil];
    
    for (NSDictionary *dicData in chartListAry1) {
        
        AnchorItem *anchorItem = [AnchorItem new];
        anchorItem.y1Value = [[dicData objectForKey:@"roi"] floatValue];
        anchorItem.y2Value = [[dicData objectForKey:@"cost"] floatValue];
        anchorItem.xDateLabel = [dicData objectForKey:@"dd"];
        
        [self.anchorDataAry1 addObject:anchorItem];
    }
    
    for (NSDictionary *dicData in chartListAry3) {
        
        AnchorItem *anchorItem = [AnchorItem new];
        anchorItem.y1Value = [[dicData objectForKey:@"roi"] floatValue];
        anchorItem.y2Value = [[dicData objectForKey:@"cost"] floatValue];
        anchorItem.xDateLabel = [dicData objectForKey:@"dd"];
        
        [self.anchorDataAry2 addObject:anchorItem];
    }
    
    CGRect rect1 = CGRectMake(5, 40,
                              self.view.frame.size.width - 5 - 5,
                              200);
    
    CGRect rect2 = CGRectMake(5, 240,
                              self.view.frame.size.width - 5 - 5,
                              200);
    
    
    self.lineChartView1 = [[[LineChartView alloc] initWithFrame:rect1] autorelease];
    self.lineChartView1.isShowY1MinMaxValue = YES;
    self.lineChartView1.lineChartDrawType = LineChartDrawTypeDay;
    self.lineChartView1.xGroupSectionValue = 30;
    self.lineChartView1.perLabelSection = 5;
    self.lineChartView1.xDrawSectionCount = 6;
    self.lineChartView1.yDrawSectionCount = 4;
    self.lineChartView1.drawLineTypeOfY = LineDrawTypeDashLine;
    self.lineChartView1.drawLineTypeOfX = LineDrawTypeDashLine;
    self.lineChartView1.backgroundColor = [UIColor blackColor];
    self.lineChartView1.xAxisLineColor = [UIColor whiteColor];
    self.lineChartView1.yAxisLineColor = [UIColor whiteColor];
    self.lineChartView1.xLineColor = [UIColor whiteColor];
    self.lineChartView1.yLineColor = [UIColor whiteColor];
    self.lineChartView1.xTextColor = [UIColor whiteColor];
    self.lineChartView1.yTextColor = [UIColor whiteColor];
    self.lineChartView1.y1LineColorLower = [UIColor greenColor];
    self.lineChartView1.y1LineColorUpper = [UIColor redColor];
    self.lineChartView1.y2LineColor = [UIColor colorWithRed:12/255.0 green:139/255.0 blue:207/255.0 alpha:1];
    self.lineChartView1.dataSourceAry = self.anchorDataAry1;
    [self.view addSubview:self.lineChartView1];//
    
    self.lineChartView2 = [[[LineChartView alloc] initWithFrame:rect2] autorelease];
    self.lineChartView2.isShowY1MinMaxValue = YES;
    self.lineChartView2.lineChartDrawType = LineChartDrawTypeMonth;
    self.lineChartView2.xGroupSectionValue = 12;
    self.lineChartView1.perLabelSection = 2;
    self.lineChartView2.xDrawSectionCount = 6;
    self.lineChartView2.yDrawSectionCount = 4;
    self.lineChartView2.drawLineTypeOfY = LineDrawTypeDashLine;
    self.lineChartView2.drawLineTypeOfX = LineDrawTypeDashLine;
    self.lineChartView2.backgroundColor = [UIColor blackColor];
    self.lineChartView2.xAxisLineColor = [UIColor whiteColor];
    self.lineChartView2.yAxisLineColor = [UIColor whiteColor];
    self.lineChartView2.xLineColor = [UIColor whiteColor];
    self.lineChartView2.yLineColor = [UIColor whiteColor];
    self.lineChartView2.xTextColor = [UIColor whiteColor];
    self.lineChartView2.yTextColor = [UIColor whiteColor];
    self.lineChartView2.y1LineColorLower = [UIColor greenColor];
    self.lineChartView2.y1LineColorUpper = [UIColor redColor];
    self.lineChartView2.y2LineColor = [UIColor colorWithRed:12/255.0 green:139/255.0 blue:207/255.0 alpha:1];
    self.lineChartView2.dataSourceAry = self.anchorDataAry2;
    [self.view addSubview:self.lineChartView2];//
}

-(BOOL) shouldAutorotate
{
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    CGRect rect1;
    CGRect rect2;
    
    switch (orientation) {
            
        case UIInterfaceOrientationPortrait:
        case UIInterfaceOrientationPortraitUpsideDown:
        {
            rect1 = CGRectMake(5, 40, self.view.frame.size.width - 5 - 5, 200);
            
            rect2 = CGRectMake(5, 260, self.view.frame.size.width - 5 - 5, 200);
            
        }
            break;
        case UIInterfaceOrientationLandscapeLeft:
        case UIInterfaceOrientationLandscapeRight:
        {
            rect1 = CGRectMake(5, 10, self.view.frame.size.width - 5 - 5, 200);
            
            rect2 = CGRectMake(5, 260, self.view.frame.size.width - 5 - 5, 200);
        }
            break;
        default:
            break;
    }
    
    [self.lineChartView1 resetViewWithFrame:rect1];
    
    [self.lineChartView2 resetViewWithFrame:rect2];
    
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
