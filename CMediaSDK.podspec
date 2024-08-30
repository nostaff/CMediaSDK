# pod trunk register nostaff@sina.com nostaff --description="CMedia Monile Ad SDK"
# pod trunk me
# pod trunk push CMediaSDK.podspec --allow-warnings --skip-import-validation --verbose


Pod::Spec.new do |s|
  s.name         = "CMediaSDK"
  s.version      = "2.7.8"
  s.summary      = "Mobile App Aggregation Ad SDK of CMedia SDK for iOS."
  s.description  = <<-DESC
                   CMedia SDK is an advertising aggregation SDK that allows you to monetize iOS applications through CMedia advertising.
                   DESC
  s.homepage     = "https://res.ads.cctv.com/docs/iOS-SDK-%E5%AF%B9%E6%8E%A5%E6%96%87%E6%A1%A3.html"
  s.license      = { :type => "MIT" }
  s.author       = 'Lurich'
  
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '11.0'
  s.static_framework = true
  s.requires_arc = true
  s.swift_versions = '5.0'
  
  s.frameworks   = 'AssetsLibrary', 'MapKit', 'JavaScriptCore', 'StoreKit', 'MobileCoreServices', 'WebKit', 'MediaPlayer', 'CoreMedia', 'AVFoundation', 'CoreLocation', 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'CoreMotion', 'Security', 'QuartzCore', 'CoreGraphics', 'SafariServices', 'UIKit', 'Foundation', 'AppTrackingTransparency', 'DeviceCheck'
  s.libraries    = 'c++', 'c++abi', 'resolv', 'xml2', 'bz2', 'z', 'iconv', 'sqlite3'
  
  s.xcconfig =   { 'OTHER_LDFLAGS' => ['-lObjC']}
  s.pod_target_xcconfig =   { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i' }
  
  # s.source = { :http => "https://res.ads.cctv.com/demo/CMediaSDK-2.7.3.zip" }
  s.source = { :git => "https://github.com/nostaff/CMediaSDK.git", :tag => s.version.to_s }
  # s.source = { :git => "https://github.com/nostaff/CMediaSDK.git", :tag => "2.7.5" }
  s.source = { :http => "https://github.com/xiaofu666/CMediaSDK/releases/download/#{s.version}/CMediaSDK.zip" }

    
  s.default_subspecs = 'MSaas'

  s.subspec 'MSaas' do |ss|
    ss.ios.deployment_target = '10.0'
    ss.vendored_frameworks = 'CMediaSDK/MSaas.xcframework'
  end
  
  s.subspec 'SFAdCsjAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'Ads-CN-Beta/BUAdSDK'
    ss.dependency 'Ads-CN-Beta/CSJMediation'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdCsjAdapter.xcframework'
  end
  
  s.subspec 'SFAdGdtAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'GDTMobSDK'
    ss.dependency 'CMediaSDK/MSaas'
    # ss.dependency 'CSJMGdtAdapter'
    ss.vendored_frameworks = 'CMediaSDK/SFAdGdtAdapter.xcframework'
  end
  
  s.subspec 'SFAdKsAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'KSAdSDK'
    ss.dependency 'CMediaSDK/MSaas'
    # ss.dependency 'CSJMKsAdapter'
    ss.vendored_frameworks = 'CMediaSDK/SFAdKsAdapter.xcframework'
  end
  
  s.subspec 'SFAdJztAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'JADYun'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdJztAdapter.xcframework'
  end
  
  s.subspec 'SFAdBaiduAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'BaiduMobAdSDK', '~> 5.352'
    ss.dependency 'CMediaSDK/MSaas'
    # ss.dependency 'CSJMBaiduAdapter'
    ss.vendored_frameworks = 'CMediaSDK/SFAdBaiduAdapter.xcframework'
  end
  
  s.subspec 'SFAdBeiziAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'BeiZiSDK-iOS/BeiZiSDK-iOS'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdBeiziAdapter.xcframework'
  end
  
  s.subspec 'SFAdTbAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'SFTanxSDK', '~> 3.4.5'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdTbAdapter.xcframework'
  end
  
  s.subspec 'SFAdMsAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MSMobAdSDK/MS'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdMsAdapter.xcframework'
  end
  
  s.subspec 'SFAdSigmobAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'SigmobAd-iOS'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdSigmobAdapter.xcframework'
  end
  
  s.subspec 'SFAdFlAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'FLAD/FLAdSaas'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdFlAdapter.xcframework'
  end
  
  s.subspec 'SFAdTmAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'TianmuSDK'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdTmAdapter.xcframework'
  end
  
  s.subspec 'SFAdHrAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'HRAdSDK/HR'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdHrAdapter.xcframework'
  end
  
  s.subspec 'SFAdYtAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    # ss.dependency 'YouTuiAdSDK'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdYtAdapter.xcframework'
  end
  
  s.subspec 'SFAdKdxfAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdKdxfAdapter.xcframework'
  end
  
  s.subspec 'SFAdZyAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'OctopusSDK'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdZyAdapter.xcframework'
  end
  
  s.subspec 'SFAdLyAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdLyAdapter.xcframework'
  end
  
  
  
  
  s.subspec 'SFAdMtgAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'MintegralAdSDK/All', '7.6.3'
    ss.dependency 'AppLovinMediationMintegralAdapter', '7.6.3.0.0'
    ss.dependency 'TradPlusAdSDK/MintegralAdapter', '11.3.0'
    ss.dependency 'TPNMintegralSDKAdapter','6.3.50.2'
    ss.dependency 'GoogleMobileAdsMediationMintegral', '7.6.3.0'
    ss.dependency 'CMediaSDK/MSaas'
    ss.dependency 'CMediaSDK/SFAdTnAdapter'
    ss.dependency 'CMediaSDK/SFAdTpAdapter'
    ss.dependency 'CMediaSDK/SFAdApplovinAdapter'
    ss.dependency 'CMediaSDK/SFAdMobAdapter'
    ss.vendored_frameworks = 'CMediaSDK/SFAdMtgAdapter.xcframework'
  end
  
  s.subspec 'SFAdPangleAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'Ads-Global', '5.9.0.7'
    ss.dependency 'AppLovinMediationByteDanceAdapter', '5.9.0.7.0'
    ss.dependency 'TradPlusAdSDK/PangleAdapter', '11.3.0'
    ss.dependency 'TPNPangleSDKAdapter', '6.3.50.2'
    ss.dependency 'GoogleMobileAdsMediationPangle', '5.9.0.7.0'
    ss.dependency 'CMediaSDK/MSaas'
    ss.dependency 'CMediaSDK/SFAdTnAdapter'
    ss.dependency 'CMediaSDK/SFAdTpAdapter'
    ss.dependency 'CMediaSDK/SFAdApplovinAdapter'
    ss.dependency 'CMediaSDK/SFAdMobAdapter'
    ss.vendored_frameworks = 'CMediaSDK/SFAdPangleAdapter.xcframework'
  end
  
  s.subspec 'SFAdMetaAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'FBAudienceNetwork', '6.15.0'
    ss.dependency 'AppLovinMediationFacebookAdapter', '6.15.0.0'
    ss.dependency 'TradPlusAdSDK/FacebookAdapter', '11.3.0'
    ss.dependency 'TPNFacebookSDKAdapter', '6.3.50'
    ss.dependency 'GoogleMobileAdsMediationFacebook', '6.15.0.0'
    ss.dependency 'CMediaSDK/MSaas'
    ss.dependency 'CMediaSDK/SFAdTnAdapter'
    ss.dependency 'CMediaSDK/SFAdTpAdapter'
    ss.dependency 'CMediaSDK/SFAdApplovinAdapter'
    ss.dependency 'CMediaSDK/SFAdMobAdapter'
    ss.vendored_frameworks = 'CMediaSDK/SFAdMetaAdapter.xcframework'
  end
  
  s.subspec 'SFAdVungleAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'VungleAds', '7.3.1'
    ss.dependency 'AppLovinMediationVungleAdapter', '7.3.1.0'
    ss.dependency 'TradPlusAdSDK/VungleAdapter', '11.3.0'
    ss.dependency 'TPNVungleSDKAdapter', '6.3.50.2'
    ss.dependency 'GoogleMobileAdsMediationVungle', '7.3.1.0'
    ss.dependency 'CMediaSDK/MSaas'
    ss.dependency 'CMediaSDK/SFAdTnAdapter'
    ss.dependency 'CMediaSDK/SFAdTpAdapter'
    ss.dependency 'CMediaSDK/SFAdApplovinAdapter'
    ss.dependency 'CMediaSDK/SFAdMobAdapter'
    ss.vendored_frameworks = 'CMediaSDK/SFAdVungleAdapter.xcframework'
  end
  
  s.subspec 'SFAdInmobiAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'InMobiSDK', '10.7.2'
    ss.dependency 'AppLovinMediationInMobiAdapter', '10.7.2.0'
    ss.dependency 'TradPlusAdSDK/InMobiAdapter', '11.3.0'
    ss.dependency 'TPNInmobiSDKAdapter', '6.3.50'
    ss.dependency 'GoogleMobileAdsMediationInMobi', '10.7.2.0'
    ss.dependency 'CMediaSDK/MSaas'
    ss.dependency 'CMediaSDK/SFAdTnAdapter'
    ss.dependency 'CMediaSDK/SFAdTpAdapter'
    ss.dependency 'CMediaSDK/SFAdApplovinAdapter'
    ss.dependency 'CMediaSDK/SFAdMobAdapter'
    ss.vendored_frameworks = 'CMediaSDK/SFAdInmobiAdapter.xcframework'
  end
  
  s.subspec 'SFAdMobAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'Google-Mobile-Ads-SDK', '11.3.0'
    ss.dependency 'AppLovinMediationGoogleAdapter', '11.3.0.0'
    ss.dependency 'TradPlusAdSDK/AdMobAdapter', '11.3.0'
    ss.dependency 'TPNAdmobSDKAdapter', '6.3.50.2'
    ss.dependency 'CMediaSDK/MSaas'
    ss.dependency 'CMediaSDK/SFAdTnAdapter'
    ss.dependency 'CMediaSDK/SFAdTpAdapter'
    ss.vendored_frameworks = 'CMediaSDK/SFAdMobAdapter.xcframework'
  end
  
  s.subspec 'SFAdApplovinAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'AppLovinSDK', '12.4.2'
    ss.dependency 'TradPlusAdSDK/AppLovinAdapter', '11.3.0'
    ss.dependency 'TPNApplovinSDKAdapter', '6.3.50.2'
    ss.dependency 'GoogleMobileAdsMediationAppLovin', '12.4.2.0'
    ss.dependency 'CMediaSDK/MSaas'
    ss.dependency 'CMediaSDK/SFAdTnAdapter'
    ss.dependency 'CMediaSDK/SFAdTpAdapter'
    ss.dependency 'CMediaSDK/SFAdMobAdapter'
    ss.vendored_frameworks = 'CMediaSDK/SFAdApplovinAdapter.xcframework'
  end
  
  s.subspec 'SFAdBigoAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'BigoADS', '4.2.3'
    ss.dependency 'TradPlusAdSDK/BigoAdapter', '11.3.0'
    ss.dependency 'TPNBigoSDKAdapter', '6.3.50.2'
    ss.dependency 'CMediaSDK/MSaas'
    ss.dependency 'CMediaSDK/SFAdTnAdapter'
    ss.dependency 'CMediaSDK/SFAdTpAdapter'
    ss.vendored_frameworks = 'CMediaSDK/SFAdBigoAdapter.xcframework'
  end
  
  s.subspec 'SFAdTnAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'TPNiOS','6.3.50'
    ss.dependency 'TraminiSDK','6.3.30'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdTnAdapter.xcframework'
  end
  
  s.subspec 'SFAdTpAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'TradPlusAdSDK', '11.3.0'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdTpAdapter.xcframework'
  end
  
  
  
  
  s.subspec 'SFAdUnityAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'UnityAds'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdUnityAdapter.xcframework'
  end
  
  s.subspec 'SFAdIronsourceAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'IronSourceSDK', '8.0.0.0'
    ss.dependency 'CMediaSDK/MSaas'
    ss.vendored_frameworks = 'CMediaSDK/SFAdIronsourceAdapter.xcframework'
  end

end
