//
//  SFBaseAdManager+MCTool.h
//  SFAdMcTool
//
//  Created by Lurich on 2024/5/11.
//

#import <MSaas/MSaas.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^AdJsonBlock)(NSDictionary *adData);

@interface SFBaseAdManager (MCTool)

@property (nonatomic, copy) AdJsonBlock adBlock;

- (void)getCurrentADMaterial:(AdJsonBlock)block;

@end

NS_ASSUME_NONNULL_END
