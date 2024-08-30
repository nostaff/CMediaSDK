//
//  SFAdSDKManager.h
//  AdDemo
//
//  Created by lurich on 2021/9/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>


typedef NS_ENUM(NSInteger, SFGDPRConsentSet) {
    SFGDPRConsentSetUnknown = 0,
    SFGDPRConsentSetPersonalized,
    SFGDPRConsentSetNonpersonalized
};

typedef NS_ENUM(NSInteger, SFADEnvironment) {
    SFADEnvironmentDebug = 0,   // 内网
    SFADEnvironmentChina,
    SFADEnvironmentCCTV,
    SFADEnvironmentOther,       // 海外
    SFADEnvironmentAuto,
};

NS_ASSUME_NONNULL_BEGIN

@interface SFAdSDKManager : NSObject

@property (nonatomic, strong) NSMutableDictionary *registerDict;

@property (nonatomic, strong) id _Nullable manager;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
+ (instancetype)defaultManager;

/// 自定义设置用户的GDPR，GDPR是《通用数据保护条例》的缩写，界面仅适用于欧洲。
@property (nonatomic, readonly) SFGDPRConsentSet dataConsentSet;

/// 大图片的展示样式，默认值为UIViewContentModeScaleAspectFit
@property (nonatomic) UIViewContentMode contentMode;

/// 国内注册APP id
+ (BOOL)registerAppId:(NSString *)appId;
/// 海外注册APP id
+ (BOOL)registerAppId:(NSString *)appId Environment:(SFADEnvironment)environment;
/// 获取注册的APP id
+ (NSString *)appId;

/// 自定义配置用户分组信息
+ (void)setUserInfoForMap:(NSDictionary *)userInfo;

/// 设置主渠道
+ (void)setChannel:(NSString *)channel;

/// 设置子渠道
+ (void)setSubChannel:(NSString *)sub_channel;

/// 是否限制个性化广告，  YES:限制   NO:不限制    默认为NO
+ (void)setPersonalizedState:(BOOL)state;

/// 设置地理位置经纬度，可提高广告填充及收益
+ (void)setGeographicLocationLongitude:(NSString *)longitude Latitude:(NSString *)latitude;

/// 获取 SDK Version 版本号
+ (NSString *)SDKVersion;

/// 检查集成的联盟SDK版本号
+ (void)checkSdkIntegration;

/// 开启联盟SDK回调日志
+ (void)unionAdCallbackLog:(BOOL)open;

/**
 在播放音频时是否使用SDK内部对AVAudioSession设置的category及options，默认使用(YES)，若不使用，请在SDK初始化后调用此方法修改
 SDK内部将不做任何处理，由调用方在展示广告时自行设置；
 SDK设置的category为AVAudioSessionCategoryAmbient，options为AVAudioSessionCategoryOptionDuckOthers
 */
+ (void)enableDefaultAudioSessionSetting:(BOOL)enabled;

/// 是否使用 WKWebView 替代 SafariViewController，默认为NO
+ (void)usingWKWebView:(BOOL)open;

/// 是否使用系统SafariViewController，默认为NO
+ (void)usingOSSaferiWebView:(BOOL)open;

/// 清除广告素材缓存
+ (void)clearAdMaterialCache;

/// 欧盟GDPR合规弹窗
- (void)presentDataConsentDialogInViewController:(UIViewController *)viewController dismissalCallback:(void(^)(SFGDPRConsentSet dataConsentSet))dismissCallback;

@end

NS_ASSUME_NONNULL_END
