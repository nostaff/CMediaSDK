Pod::Spec.new do |s|
  s.name         = "CMediaSDK"
  s.version      = "2.7.4.0"
  s.summary      = "Mobile App Aggregation Ad SDK of CMedia SDK for iOS."
  s.description  = <<-DESC
                   CMedia SDK is an advertising aggregation SDK that allows you to monetize iOS applications through CMedia advertising.
                   DESC
  s.homepage     = "https://res.ads.cctv.com/docs/iOS-SDK-%E5%AF%B9%E6%8E%A5%E6%96%87%E6%A1%A3.html"
  s.license      = { :type => "MIT" }
  s.author       = 'Lurich'
  
  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.static_framework = true
  s.requires_arc = true
  s.swift_versions = '4.0'
  
  s.frameworks   = 'AssetsLibrary', 'MapKit', 'JavaScriptCore', 'StoreKit', 'MobileCoreServices', 'WebKit', 'MediaPlayer', 'CoreMedia', 'AVFoundation', 'CoreLocation', 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'CoreMotion', 'Security', 'QuartzCore', 'CoreGraphics', 'SafariServices', 'UIKit', 'Foundation', 'AppTrackingTransparency', 'DeviceCheck'
  s.libraries    = 'c++', 'c++abi', 'resolv', 'xml2', 'bz2', 'z', 'iconv', 'sqlite3'
  
  s.xcconfig =   { 'OTHER_LDFLAGS' => ['-lObjC']}
  s.pod_target_xcconfig =   { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i' }
  
  # s.source = { :http => "https://github.com/nostaff/CMediaSDK/releases/download/#{s.version}/CMediaSDK.zip" }
  # s.source = { :http => "https://res.ads.cctv.com/demo/CMediaSDK-2.7.3.zip" }
  # s.source = { :git => "https://github.com/nostaff/CMediaSDK.git", :tag => s.version.to_s }
  s.source = { :git => "https://github.com/nostaff/CMediaSDK.git", :tag => 2.7.4 }

    
  s.default_subspecs = 'MSaas'

  s.subspec 'MSaas' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.vendored_frameworks = 'CMediaSDK/MSaas.xcframework'
  end
  
  s.subspec 'SFAdCsjAdapter' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.dependency 'Ads-Fusion-CN-Beta'
    ss.dependency 'Ads-Fusion-CN-Beta/CSJMediation'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'Frameworks/SFAdCsjAdapter.xcframework'
  end
  
  s.subspec 'SFAdGdtAdapter' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.dependency 'GDTMobSDK'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'Frameworks/SFAdGdtAdapter.xcframework'
  end
  
  s.subspec 'SFAdKsAdapter' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.dependency 'KSAdSDK'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'Frameworks/SFAdKsAdapter.xcframework'
  end
  
  s.subspec 'SFAdJztAdapter' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.dependency 'JADYun'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'Frameworks/SFAdJztAdapter.xcframework'
  end
  
  # s.subspec 'SFAdBaiduAdapter' do |ss|
  #   ss.ios.deployment_target = '9.0'
  #   ss.dependency 'BaiduMobAdSDK'
  #   ss.dependency 'CMediaSDK/MSaas'
  #   ss.vendored_frameworks = 'Frameworks/SFAdBaiduAdapter.xcframework'
  # end
  
  # s.subspec 'SFAdBeiziAdapter' do |ss|
  #   ss.ios.deployment_target = '9.0'
  #   ss.dependency 'BeiZiSDK'
  #   ss.dependency 'CMediaSDK/MSaas'
  #   ss.vendored_frameworks = 'Frameworks/SFAdBeiziAdapter.xcframework'
  # end
  
  # s.subspec 'SFAdTbAdapter' do |ss|
  #   ss.ios.deployment_target = '9.0'
  #   ss.dependency 'SFTanxSDK'
  #   ss.dependency 'CMediaSDK/MSaas'
  #   ss.vendored_frameworks = 'Frameworks/SFAdTbAdapter.xcframework'
  # end
  
  # s.subspec 'SFAdMsAdapter' do |ss|
  #   ss.ios.deployment_target = '9.0'
  #   ss.dependency 'MSMobAdSDK/MS'
  #   ss.dependency 'CMediaSDK/MSaas'
  #   ss.vendored_frameworks = 'Frameworks/SFAdMsAdapter.xcframework'
  # end
  
  # s.subspec 'SFAdSigmobAdapter' do |ss|
  #   ss.ios.deployment_target = '9.0'
  #   ss.dependency 'SigmobAd-iOS'
  #   ss.dependency 'CMediaSDK/MSaas'
  #   ss.vendored_frameworks = 'Frameworks/SFAdSigmobAdapter.xcframework'
  # end
  
  # s.subspec 'SFAdMtgAdapter' do |ss|
  #   ss.ios.deployment_target = '9.0'
  #   ss.dependency 'MintegralAdSDK/All'
  #   ss.dependency 'CMediaSDK/MSaas'
  #   ss.vendored_frameworks = 'Frameworks/SFAdMtgAdapter.xcframework'
  # end
  
  # s.subspec 'SFAdPangleAdapter' do |ss|
  #   ss.ios.deployment_target = '9.0'
  #   ss.dependency 'Ads-Global'
  #   ss.dependency 'CMediaSDK/MSaas'
  #   ss.vendored_frameworks = 'Frameworks/SFAdPangleAdapter.xcframework'
  # end
  
  # s.subspec 'SFAdMobAdapter' do |ss|
  #   ss.ios.deployment_target = '9.0'
  #   ss.dependency 'Google-Mobile-Ads-SDK'
  #   ss.dependency 'PersonalizedAdConsent'
  #   ss.dependency 'CMediaSDK/MSaas'
  #   ss.vendored_frameworks = 'Frameworks/SFAdMobAdapter.xcframework'
  # end
  
  # s.subspec 'SFAdMetaAdapter' do |ss|
  #   ss.ios.deployment_target = '9.0'
  #   ss.dependency 'FBAudienceNetwork'
  #   ss.dependency 'CMediaSDK/MSaas'
  #   ss.vendored_frameworks = 'Frameworks/SFAdMetaAdapter.xcframework'
  # end
  
  # s.subspec 'SFAdUnityAdapter' do |ss|
  #   ss.ios.deployment_target = '9.0'
  #   ss.dependency 'UnityAds'
  #   ss.dependency 'CMediaSDK/MSaas'
  #   ss.vendored_frameworks = 'Frameworks/SFAdUnityAdapter.xcframework'
  # end
  
  # s.subspec 'SFAdVungleAdapter' do |ss|
  #   ss.ios.deployment_target = '9.0'
  #   ss.dependency 'VungleSDK-iOS'
  #   ss.dependency 'CMediaSDK/MSaas'
  #   ss.vendored_frameworks = 'Frameworks/SFAdVungleAdapter.xcframework'
  # end
  
  # s.subspec 'SFAdTopOnAdapter' do |ss|
  #   ss.ios.deployment_target = '9.0'
  #   ss.dependency 'AnyThinkiOS/AnyThinkSDK'
  #   ss.dependency 'AnyThinkiOS/AnyThinkPangleAdapter'
  #   ss.dependency 'AnyThinkiOS/AnyThinkAdmobAdapter'
  #   ss.dependency 'AnyThinkiOS/AnyThinkFacebookAdapter'
  #   ss.dependency 'CMediaSDK/MSaas'
  #   ss.vendored_frameworks = 'Frameworks/SFAdTopOnAdapter.xcframework'
  # end
  
  # s.subspec 'SFAdApplovinAdapter' do |ss|
  #   ss.ios.deployment_target = '9.0'
  #   ss.dependency 'AppLovinSDK'
  #   ss.dependency 'CMediaSDK/MSaas'
  #   ss.vendored_frameworks = 'Frameworks/SFAdApplovinAdapter.xcframework'
  # end

end
