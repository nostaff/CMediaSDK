# CMediaSDK
***
[![MSaas](https://img.shields.io/badge/MSaas-AD-red.svg)](https://github.com/nostaff/CMediaSDK.git)
[![Travis](https://img.shields.io/travis/nostaff/CMediaSDK/tree/master/Example/YQAdDemo.svg?style=flat)](https://github.com/nostaff/CMediaSDK.git)
[![Language](https://img.shields.io/badge/Language-Objective--C-FF7F24.svg?style=flat)](https://github.com/nostaff/CMediaSDK.git)
[![CocoaPods](https://img.shields.io/cocoapods/p/MSaas.svg)](https://github.com/nostaff/CMediaSDK.git)
[![CocoaPods](https://img.shields.io/cocoapods/v/MSaas.svg)](https://github.com/nostaff/CMediaSDK.git)

## 如何开始

+ [下载 CMediaSDK](https://github.com/nostaff/CMediaSDK) 并使用附带的 [示例应用程序](https://github.com/nostaff/CMediaSDK/tree/master/Example/ADDemo)

+ 查看 [文档](https://github.com/nostaff/CMediaSDK/blob/master/CMediaSDK/Document/iOS-SDK-对接文档.html) 以全面了解CMediaSDK中提供的所有API

+ 如果您还有其他问题，请联系我们运营


## 使用CocoaPods安装


[CocoaPods](https://cocoapods.org) 是Xcode项目中的依赖管理器，它可以自动化并简化您在项目中使用第三方库的过程。您可以使用以下命令安装它：

```ruby
$ gem install cocoapods
```

### Podfile

CMediaSDK SDK 在 V2.7.2 以上版本，支持cocoapod方式引入海外 SDK。<br>

要使用的 CocoaPods CMediaSDK 集成到您的 Xcode 项目，需要您指定它的 **Podfile**:<br>

```ruby
# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

target 'testPod' do
    # Comment the next line if you don't want to use dynamic frameworks
    use_frameworks!
    
    #核心库,必须添加
    # CMediaSDK iOS 主包
    pod 'CMediaSDK/MSaas'
    
    #各平台的Adapter
    #pod 'CMediaSDK/SFAd(平台名)Adapter'
    #按照您需要支持的平台，按需引入即可

    # 穿山甲
    pod 'CMediaSDK/SFAdCsjAdapter'
    
    # 优量汇
    pod 'CMediaSDK/SFAdGdtAdapter'
    
    # 快手联盟
    pod 'CMediaSDK/SFAdKsAdapter'
    
    # 百度
    # pod 'CMediaSDK/SFAdBaiduAdapter'
    
    # 京准通
    # pod 'CMediaSDK/SFAdJztAdapter'
  
    # 科大讯飞
    # pod 'CMediaSDK/SFAdKdxfAdapter'
end
```

下面是所有Adapter的pod列表

|network|podCode|
|---|---|
|CMediaSDK|    pod 'CMediaSDK/MSaas' |
|穿山甲|       pod 'CMediaSDK/SFAdCsjAdapter' |
|优量汇|       pod 'CMediaSDK/SFAdGdtAdapter' |
|快手联盟|     pod 'CMediaSDK/SFAdKsAdapter' |
|百青藤|       pod 'CMediaSDK/SFAdBaiduAdapter' |
|京准通|       pod 'CMediaSDK/SFAdJztAdapter' |
|Beizi|       pod 'CMediaSDK/SFAdBeiziAdapter' |
|Meishu|      pod 'CMediaSDK/SFAdMsAdapter' |
|Sigmob|      pod 'CMediaSDK/SFAdSigmobAdapter' |
|Mintegral|   pod 'CMediaSDK/SFAdMtgAdapter' |
|Pangle|      pod 'CMediaSDK/SFAdPangleAdapter' |
|AdMob|       pod 'CMediaSDK/SFAdMobAdapter' |
|Meta|        pod 'CMediaSDK/SFAdMetaAdapter' |
|Vungle|      pod 'CMediaSDK/SFAdVungleAdapter' |
|Tanx|        pod 'CMediaSDK/SFAdTbAdapter' |
|UnityAds|    pod 'CMediaSDK/SFAdUnityAdapter' |
|TopOn|       pod 'CMediaSDK/SFAdTopOnAdapter' |
|AdApplovin|  pod 'CMediaSDK/SFAdApplovinAdapter' |


然后，运行以下命令：

```ruby
$ pod install
```

更新SDK至最新版本，运行以下命令：

```ruby
$ pod repo update
```

更多详情，请阅读[接入文档](https://xiaofu666.github.io/static/html/iOS-SDK-对接文档.html)

## 作者

Lurich

## License

CMediaSDK 可在MIT许可下使用。有关详细信息，请参阅LICENSE文件。

