#
# Be sure to run `pod lib lint LykaPods.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LykaPods'
  s.version          = '3.6'
  s.summary          = 'All Lyka Pods for each module.'
  s.homepage         = 'https://github.com/ivoleko/LykaPods'
  s.source           = { :git => 'https://github.com/ivoleko/LykaPods.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.source_files = 'LykaPods/Classes/**/*'

  s.default_subspec = 'Main-iOS'

  s.subspec "Auth" do |ss|
    ss.dependency 'JWTDecode', '~> 2.4'
  end

  s.subspec "Facebook-SDK" do |ss|
    ss.dependency 'FBSDKCoreKit', '~> 7.0'
    ss.dependency 'FBSDKLoginKit', '~> 7.0'
    ss.dependency 'FBSDKShareKit', '~> 7.0'
  end

  s.subspec "Core-iOS" do |ss|
    ss.dependency 'LykaPods/Auth'
    ss.dependency 'Nuke', '9.1.2'
    ss.dependency 'PanModal', '~> 1.2.7'
  end

  s.subspec "Commons-iOS" do |ss|
    ss.dependency 'LykaPods/Auth'
    ss.dependency 'ProgressHUD', '2.70'
    ss.dependency 'Mixpanel-swift', '2.10.3' #Mixpanel Analytics
    ss.dependency 'HCaptcha', '~> 1.5'
    ss.dependency 'ZendeskAnswerBotSDK' , '2.1.3' # AnswerBot only on the Unified SDK
    ss.dependency 'ZendeskSupportSDK', '5.3.0' # Support only on the Unified SDK
    ss.dependency 'ZendeskChatSDK', '2.11.1' # Chat only on the Unified SDK
  end

  s.subspec "BuyGem-iOS" do |ss|
    ss.dependency 'LykaPods/Core-iOS'
    ss.dependency 'LykaPods/Commons-iOS'
  end

  s.subspec "Wallet-iOS" do |ss|
    ss.dependency 'LykaPods/Core-iOS'
    ss.dependency 'LykaPods/Commons-iOS'
    ss.dependency 'GSKStretchyHeaderView', '~> 1.0'
  end

  s.subspec "Onboarding-iOS" do |ss|
    ss.dependency "LykaPods/Core-iOS"
    ss.dependency "LykaPods/Commons-iOS"
    ss.dependency "LykaPods/Facebook-SDK"
    ss.dependency "LykaPods/Wallet-iOS"
    ss.dependency "GoogleMaps"
    ss.dependency "GooglePlaces"
  end



  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
