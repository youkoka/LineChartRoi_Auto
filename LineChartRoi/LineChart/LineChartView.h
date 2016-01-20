//
//  LineChartContentView.h
//  LineGraphicTest
//
//  Created by yehengjia on 2015/3/27.
//  Copyright (c) 2015年 mitake. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChartBaseView.h"
#import "AnchorView.h"

//! 繪圖基準類型
typedef NS_ENUM(NSInteger, LineChartDrawType)
{
    //! 以月份做區分
    LineChartDrawTypeMonth,
    
    //! 以日做區分
    LineChartDrawTypeDay,
};

typedef NS_ENUM(NSInteger, LineDrawType)
{
    //! 無線條
    LineDrawTypeNone = 0,
    
    //! 實線
    LineDrawTypeDashLine,
    
    //! 虛線
    LineDrawTypeDottedLine,
};

typedef NS_ENUM(NSInteger, ZoomScaleAxis)
{
    ZoomScaleAxisNone   = 0,
    ZoomScaleAxisX      = 1 << 1,
    ZoomScaleAxisY      = 1 << 2,
    ZoomScaleAxisXY     = (ZoomScaleAxisX | ZoomScaleAxisY),
};

@interface LineChartView : ChartBaseView

@property (nonatomic, assign) LineChartDrawType lineChartDrawType;

//! X 軸虛線
//! default value : LineDrawTypeNone
@property LineDrawType drawLineTypeOfX;

//! Y 軸虛線
//! default value : LineDrawTypeNone
@property LineDrawType drawLineTypeOfY;

//! x軸虛線/實線顏色
@property (nonatomic, strong) UIColor *xLineColor;
//! x軸標籤顏色
@property (nonatomic, strong) UIColor *xTextColor;
//! x軸顏色
@property (nonatomic, strong) UIColor *xAxisLineColor;

//! y軸虛線/實線顏色
@property (nonatomic, strong) UIColor *yLineColor;
//! y軸標籤顏色
@property (nonatomic, strong) UIColor *yTextColor;
//! y軸顏色
@property (nonatomic, strong) UIColor *yAxisLineColor;

//! 折線顏色
@property (nonatomic, strong) UIColor *y1LineColorUpper;
@property (nonatomic, strong) UIColor *y1LineColorLower;

@property (nonatomic, strong) UIColor *y2LineColor;

//! 切分日期字元, default : "/" and "-"
@property (nonatomic, strong) NSMutableArray *dateCharSeperateAry;

//! 資料
@property (nonatomic, strong) NSMutableArray *dataSourceAry;

//! x 軸分群數, ex: 年 : 12, 月 : 28 ~ 31
@property (nonatomic, assign) NSInteger xGroupSectionValue;

//! section 內最多幾個值
@property (nonatomic, assign) NSInteger perLabelSection;

//! x 實際畫區間數
@property (nonatomic, assign) NSInteger xDrawSectionCount;

//! y 實際畫區間數(上下加總)
@property (nonatomic, assign) NSInteger yDrawSectionCount;

//! y2 畫面比例, default = 0.25
@property (nonatomic, assign) CGFloat y2DrawRatio;

//! 是否顯示Y1最大最小值
@property (nonatomic, assign) BOOL isShowY1MinMaxValue;

-(id) initWithFrame:(CGRect)frame;

-(void) resetViewWithFrame:(CGRect) frame;

@end
