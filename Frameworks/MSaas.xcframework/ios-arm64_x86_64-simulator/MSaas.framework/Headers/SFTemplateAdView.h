//
//  SFTemplateAdView.h
//  MSaas
//
//  Created by Lurich on 2023/7/24.
//

#import <UIKit/UIKit.h>
#import <MSaas/SFFeedAdData.h>

typedef NS_ENUM(NSUInteger, SFTemplateStyleOptions) {
    /* 默认样式-图文混合 */
    SFTemplateStyleDefault  = 0,
    /* 文字浮层 */
    SFTemplateStyleNest     = 1,
    /* 上文下图 */
    SFTemplateStyleTTBI     = 2,
    /* 上图下文 */
    SFTemplateStyleTIBT     = 3,
    /* 左文右图 */
    SFTemplateStyleLTRI     = 4,
    /* 左图右文 */
    SFTemplateStyleLIRT     = 5,
    /* 纯图片 */
    SFTemplateStyleImage    = 6,
};

@interface SFTemplateAdView : UIView

@property (nonatomic, strong) UIImageView *adImageView;

- (instancetype)initWithFrame:(CGRect)frame Model:(SFFeedAdData *)model Style:(SFTemplateStyleOptions)style LRMargin:(CGFloat)left_right_margin TBMargin:(CGFloat)top_bottom_margin;

@end
