//
//  AppDelegate.m
//  TransferPlatform
//
//  Created by lurich on 2021/9/14.
//

#import "AppDelegate.h"
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import "ADInfo.h"

@interface AppDelegate ()<SFSplashDelegate>

@property (nonatomic, strong) SFSplashManager *manager;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    UINavigationController *rootVC = [[UINavigationController alloc]initWithRootViewController:[NSClassFromString(@"ViewController") new]];//Study
    self.window.rootViewController = rootVC;
    [self.window makeKeyAndVisible];
    
    [SFAdSDKManager registerAppId:app_id Environment:SFADEnvironmentCCTV];
    
    [self requestAD];
    return YES;
}

- (void)requestAD{
    [self.window sf_showSplashADWithConfig:^(SFSplashADConfig * _Nonnull config) {
            UIImage *splashBg = [UIImage imageNamed:@"splashBg"];
            config.mediaID = splash_id;
            config.timeout = 5;
            config.backgroundImage = splashBg;
            config.backgroundColor = [UIColor whiteColor];
            config.contentMode = UIViewContentModeScaleAspectFit;
        } completion:^(SFADResultInfo * _Nonnull result) {
            switch (result.type) {
                case SFADResultTypeStart:
                    NSLog(@"Block方式：开屏广告请求流程开启");
                    break;
                case SFADResultTypeRequestAD:
                    NSLog(@"Block方式：开始请求广告");
                    break;
                case SFADResultTypeLoadAD:
                    NSLog(@"Block方式：广告加载成功 %@", result.info);
                    break;
                case SFADResultTypeFail:
                    NSLog(@"Block方式：广告加载失败 %@", result.error);
                    break;
                case SFADResultTypeShow:
                    NSLog(@"Block方式：广告展示");
                    break;
                case SFADResultTypeClick:
                    NSLog(@"Block方式：广告点击");
                    break;
                case SFADResultTypeClose:
                    NSLog(@"Block方式：广告关闭");
                    break;
                    
                default:
                    break;
            }
        }];
}



@end
