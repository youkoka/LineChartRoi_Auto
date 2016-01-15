//
//  ChartBaseView.m
//  LineGraphicTest
//
//  Created by yehengjia on 2015/7/23.
//  Copyright (c) 2015年 mitake. All rights reserved.
//

#import "ChartBaseView.h"

@implementation ChartBaseView

-(id) initWithFrame:(CGRect)frame
{
    if ( (self = [super initWithFrame:frame]) ) {
        
        //! 將圓點設為左下角
        [self setTransform:CGAffineTransformMakeScale(1, -1)];
        
        //! (上, 左, 下, 右)
        _edgeInset = UIEdgeInsetsMake(10, 40, 20, 20);
        
        self.backgroundColor = [UIColor clearColor];
        
        //! X/Y軸預設數
        _xDrawLineCount = 12;
        _yDrawLineCount = 2;
    }
    
    return self;
}

#pragma mark - Customize methods

-(void) setXLineCount:(NSInteger)xDrawLineCount {
    
    _xDrawLineCount = xDrawLineCount;
}

-(void) setYLineCount:(NSInteger)yDrawLineCount {
    
    _yDrawLineCount = yDrawLineCount;
}

//! 依據畫面大小更新相關點的資訊
-(void) updateViewWithFrame:(CGRect)frame
{
    self.frame = frame;
    
    _originPoint = CGPointMake(_edgeInset.left, _edgeInset.bottom);
    _leftTopPoint = CGPointMake(_edgeInset.left, self.frame.size.height - _edgeInset.top);
    _rightBottomPoint = CGPointMake(self.frame.size.width - _edgeInset.right, _edgeInset.bottom);
    _rightTopPoint = CGPointMake(self.frame.size.width - _edgeInset.right, self.frame.size.height - _edgeInset.top);
    
    _drawOriginContentWidth = self.frame.size.width - (_edgeInset.left + _edgeInset.right);
    _drawOriginContentHeight = self.frame.size.height - (_edgeInset.bottom + _edgeInset.top);
    
    _drawContentWidth = self.drawOriginContentWidth;
    _drawContentHeight = self.drawOriginContentHeight;
    
    _rightLineOriginPoint = CGPointMake(_rightBottomPoint.x, (_rightTopPoint.y - _rightBottomPoint.y) / 2 + _originPoint.y);
    _leftLineOriginPoint = CGPointMake(_originPoint.x, (_rightTopPoint.y - _rightBottomPoint.y) / 2 + _originPoint.y);

    [self setNeedsDisplay];
}

@end
