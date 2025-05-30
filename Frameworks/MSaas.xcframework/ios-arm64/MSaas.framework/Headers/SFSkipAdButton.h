//
//  SFSkipAdButton.h
//  AdDemo
//
//  Created by lurich on 2021/9/14.
//

#import <UIKit/UIKit.h>
/**
 *  倒计时类型
 */
typedef NS_ENUM(NSInteger,SFSkipType) {
    SFSkipTypeNone      = 1,//无
    /** 方形 */
    SFSkipTypeTime      = 2,//方形:倒计时
    SFSkipTypeText      = 3,//方形:跳过
    SFSkipTypeTimeText  = 4,//方形:倒计时+跳过 (default)
    /** 圆形 */
    SFSkipTypeRoundTime = 5,//圆形:倒计时
    SFSkipTypeRoundText = 6,//圆形:跳过
    SFSkipTypeRoundProgressTime = 7,//圆形:进度圈+倒计时
    SFSkipTypeRoundProgressText = 8,//圆形:进度圈+跳过
    
    SFSkipTypeCustomGdtSkip = 9,//自定义广点通跳过
    SFSkipTypeVast = 10 //vast海外 是一个返回按键，没有动画 没有倒计时
};

@interface SFSkipAdButton : UIButton

// 针对方形跳过按钮控制跳过的间距,默认左右为5，上下为2.5
@property (nonatomic, assign) CGFloat           leftRightSpace;
@property (nonatomic, assign) CGFloat           topBottomSpace;
@property (nonatomic, assign) CGFloat bili;
@property (nonatomic, assign) CGFloat resp_area_ratio;
@property (nonatomic, assign) CGFloat display_countdown;
@property (nonatomic, assign) SFSkipType skipType;

- (instancetype)initWithSkipType:(SFSkipType)skipType;

- (void)setTitleduration:(NSInteger)duration;

- (void)startRoundDispathTimerWithDuration:(CGFloat)duration completion:(void(^)(void))completion;
- (void)cancelTimer;

- (void)setCloseTitle;

@end
