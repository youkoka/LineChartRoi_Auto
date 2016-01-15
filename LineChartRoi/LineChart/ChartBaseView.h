//
//  ChartBaseView.h
//  LineGraphicTest
//
//  Created by yehengjia on 2015/7/23.
//  Copyright (c) 2015年 mitake. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"

@interface ChartBaseView : UIView<UIGestureRecognizerDelegate>

@property (assign) UIEdgeInsets edgeInset;

//! 線圖繪圖區塊原始寬度
@property (readonly)  CGFloat drawOriginContentWidth;

//! 線圖繪圖區塊原始高度
@property (readonly)  CGFloat drawOriginContentHeight;

//! 線圖繪圖區塊寬度
@property (readonly)  CGFloat drawContentWidth;

//! 線圖繪圖區塊高度
@property (readonly)  CGFloat drawContentHeight;

//! 線圖繪圖區塊原點
@property (readonly) CGPoint originPoint;

//! X軸最遠點
@property (readonly) CGPoint rightBottomPoint;

//! 左Y軸最遠點
@property (readonly) CGPoint leftTopPoint;

//! 右Y軸最遠點
@property (readonly) CGPoint rightTopPoint;

//! 上一次點擊點
@property (readonly) CGPoint previousLocation;

//! 目前點擊點
@property (readonly) CGPoint tapLocation;

//! 右劃線起始原點
@property (readonly) CGPoint rightLineOriginPoint;

//! 左劃線起始原點
@property (readonly) CGPoint leftLineOriginPoint;

//! Y 軸上 X 軸(虛)線數量(數量不含軸線)
@property (readonly) NSInteger xDrawLineCount;

//! X 軸上 Y 軸(虛)線數量(數量含軸線, 不含原點)
@property (readonly) NSInteger yDrawLineCount;

//! 依據畫面大小更新相關點的資訊
-(void) updateViewWithFrame:(CGRect)frame;

-(void) setXLineCount:(NSInteger)xDrawLineCount;

-(void) setYLineCount:(NSInteger)yDrawLineCount;

@end
