#
# Be sure to run `pod lib lint LykaPods.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LykaPods'
  s.version          = '1.0'
  s.authors          = 'Lyka'
  s.summary          = 'All Lyka Pods for each module.'
  s.homepage         = 'https://github.com/ivoleko/PrivatePodTest'
  s.source           = { :git => 'https://github.com/ivoleko/PrivatePodTest.git', :branch => 'main' }
  s.ios.deployment_target = '11.0'
  s.default_subspec = 'Main-iOS'


  s.subspec "FirebaseAnalytics-Lyka" do |ss|
    ss.dependency 'Firebase/Analytics', '7.11'
  end

  s.subspec "Firebase-Lyka" do |ss|
    ss.dependency 'LykaPods/FirebaseAnalytics-Lyka'
    ss.dependency 'FirebaseCore', '7.11'
    ss.dependency 'FirebaseAuth', '7.11'
    ss.dependency 'FirebaseDynamicLinks', '7.11'
    ss.dependency 'Firebase/Database', '7.11'
    ss.dependency 'Firebase/Storage', '7.11'
    ss.dependency 'Firebase/Messaging', '7.11'
    ss.dependency 'FirebasePerformance', '7.11'
    ss.dependency 'FirebaseRemoteConfig', '7.11'
    ss.dependency 'Fabric', '1.10.2'
    ss.dependency 'Crashlytics', '3.14.0'
  end

  s.subspec "Facebook-SDK-Lyka" do |ss|
    ss.dependency 'FBSDKCoreKit', '~> 7.0'
    ss.dependency 'FBSDKLoginKit', '~> 7.0'
    ss.dependency 'FBSDKShareKit', '~> 7.0'
  end


  #MARK: Lyka modules
  s.subspec "Core-iOS" do |ss|
    ss.dependency 'JWTDecode', '~> 2.4'
    ss.dependency 'Nuke', '9.1.2'
    ss.dependency 'PanModal', '~> 1.2.7'
  end

  s.subspec "Commons-iOS" do |ss|
    ss.dependency 'JWTDecode', '~> 2.4'
    ss.dependency 'ProgressHUD', '2.70'
    ss.dependency 'Mixpanel-swift', '2.10.3' #Mixpanel Analytics
    ss.dependency 'HCaptcha', '~> 1.5'
    ss.dependency 'ZendeskAnswerBotSDK' , '2.1.3' # AnswerBot only on the Unified SDK
    ss.dependency 'ZendeskSupportSDK', '5.3.0' # Support only on the Unified SDK
    ss.dependency 'ZendeskChatSDK', '2.11.1' # Chat only on the Unified SDK
  end

  s.subspec "Notification-iOS" do |ss|
    ss.dependency 'LykaPods/Core-iOS'
    ss.dependency 'LykaPods/Commons-iOS'
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

  s.subspec "Video-Cache-iOS" do |ss|
    ss.dependency 'LykaPods/Core-iOS'
  end

  s.subspec "Campaigns-iOS" do |ss|
    ss.dependency "LykaPods/Core-iOS"
  end

  s.subspec "Games-iOS" do |ss|
    ss.dependency 'LykaPods/Core-iOS'
    ss.dependency 'LykaPods/Commons-iOS'
  end

  s.subspec "Ultra-rate-iOS" do |ss|
    ss.dependency 'LykaPods/Core-iOS'
    ss.dependency 'LykaPods/Commons-iOS'
    ss.dependency 'lottie-ios', '3.1.0'
  end

  s.subspec "Onboarding-iOS" do |ss|
    ss.dependency "LykaPods/Core-iOS"
    ss.dependency "LykaPods/Commons-iOS"
    ss.dependency "LykaPods/Facebook-SDK-Lyka"
    ss.dependency "LykaPods/Wallet-iOS"
    ss.dependency "GoogleMaps", '3.10'
    ss.dependency "GooglePlaces", '3.10'
  end

  s.subspec "Rankings-iOS" do |ss|
    ss.dependency 'LykaPods/Core-iOS'
    ss.dependency 'LykaPods/Commons-iOS'
    ss.dependency 'LykaPods/Video-Cache-iOS'
    ss.dependency 'PhoneNumberKit', '~> 3.1'
  end

  s.subspec "Shop-iOS" do |ss|
    ss.dependency 'LykaPods/Core-iOS'
    ss.dependency 'LykaPods/Commons-iOS'
    ss.dependency 'SDWebImageWebPCoder'
    #ss.dependency 'ImageViewer.swift', :git => 'https://github.com/lykaeleazer/ImageViewer.git'
    #ss.dependency 'ImageViewer.swift/Fetcher', :git => 'https://github.com/lykaeleazer/ImageViewer.git'
  end

  s.subspec "Community-iOS" do |ss|
    ss.dependency 'LykaPods/Commons-iOS'
    ss.dependency 'LykaPods/FirebaseAnalytics', '7.11'
    ss.dependency 'AssetsPickerViewController', '~> 2.9'
    ss.dependency 'BMPlayer', '1.3.2'
    ss.dependency 'SwiftyJSON', '4.3.0'
    ss.dependency 'Kingfisher', '6.3.0'
    ss.dependency 'Alamofire', '~> 4.9.1'
    ss.dependency 'IQKeyboardManagerSwift', '6.5.6'
    #ss.dependency 'Giphy', :podspec => 'https://s3.amazonaws.com/sdk.mobile.giphy.com/SDK/2.0.7/Giphy.podspec'
  end

  s.subspec "MirrorFly_SDK" do |ss|
    ss.dependency 'AFNetworking', '~> 4.0.0'
    ss.dependency 'Realm', '10.12.0' # Local Database
    ss.dependency 'XMPPFramework', '~> 4.0.0' # To communicate with Ejabberd server
    ss.dependency 'libPhoneNumber-iOS', '~> 0.9.0'  # Mobile number validation & formatting
    ss.dependency 'SVProgressHUD', '~> 2.2.5' # Loading animation
    ss.dependency 'Socket.IO-Client-Swift', '~> 14.0.0' # To communicte Socket I/O server
    ss.dependency 'DBGHTMLEntities', '~> 1.1.1' # Easily Decode/Encode HTML entity strings used when we copy text from web
  end

  s.subspec "ChatIOSSkeleton" do |ss|
    ss.dependency 'LykaPods/Commons-iOS'
    ss.dependency 'LykaPods/Firebase-Lyka'
    ss.dependency 'JTSImageViewController', '1.5.1' # To show Image preview. In Photo Viewer (But Not used)
    ss.dependency 'KILabel', '1.0.1' # To show links within text for chat messages
    ss.dependency 'MenuItemKit', '3.2.2' # To show menu when long press message like copy,paste
    ss.dependency 'FZAccordionTableView', '0.2.3' # To show expand and collapse in Chat message info
    ss.dependency 'GPUImage', '~> 0.1' # To show blurred Thumb image when image is not yet downloaded
    ss.dependency 'KKPinCodeTextField', '1.0.0' # To show OTP enter View
    ss.dependency 'TOCropViewController', '2.6.0' # To crop image for setting chat Theme.
    ss.dependency 'GrowingTextViewHandler', '~> 1.0.3' # To grow text when user types in chat page
    ss.dependency 'PulsingHalo', '0.2.10' # To show Bubble view for Calls when he goes away from Call View Controller
    ss.dependency 'URLEmbeddedView', '0.18.0' # To load preview view for specified link while sharing
    ss.dependency 'GoogleMaps', '3.10' # To show location when sharing location messages
    ss.dependency 'PocketSVG', '~> 2.0' # Used to show SVG image files
    #ss.dependency 'Giphy', :podspec => 'https://s3.amazonaws.com/sdk.mobile.giphy.com/SDK/2.0.7/Giphy.podspec'
    ss.dependency 'iCloudDocumentSync', '7.4.1' # Drive backup and restore Sync in iCloud
  end


  s.subspec "Live-iOS" do |ss|
    ss.dependency 'LykaPods/Core-iOS'
    ss.dependency 'LykaPods/Commons-iOS'
    ss.dependency 'LykaPods/Ultra-rate-iOS'
    ss.dependency 'Instabug','~> 10.0.3'
    #MARK: - Network
    ss.dependency 'Alamofire', '~> 4.9.1'
    ss.dependency 'AlamofireObjectMapper', '5.2.1'
    ss.dependency 'SDWebImage', '5.11.0'
    #MARK: - Util
    ss.dependency 'GPUImage', '0.1.7'
    ss.dependency 'ObjectMapper', '3.5.3'
    ss.dependency 'PromiseKit', '6.13.1'
    ss.dependency 'IQKeyboardManagerSwift', '6.5.6'
    ss.dependency 'Toast-Swift', '5.0.1'
    ss.dependency 'SnapKit', '5.0.1'
    ss.dependency 'SVProgressHUD', '2.2.5'
    ss.dependency 'SwiftyPlistManager', '1.0.2'
    ss.dependency 'libksygpulive', '3.0.4'
    #MARK: - Rx
    ss.dependency 'RxSwift', '5.1.2'
    ss.dependency 'RxCocoa', '5.1.1'
    ss.dependency 'RxRelay', '5.1.1'
    ss.dependency 'RxAppState', '1.6.0'
    ss.dependency 'RxReachability', '1.1.0'
    #MARK: - CryptoSwift
    ss.dependency 'CryptoSwift', '1.3.8'
    #MARK: - Multi-guest
    ss.dependency 'AgoraRtm_iOS', '1.4.8'
    ss.dependency 'AgoraRtcEngine_iOS', '3.5.0.2'
    ss.dependency 'AGECamera', '1.0.3'
    #Mark - Social (optional)
    ss.dependency 'LykaPods/Facebook-SDK-Lyka'
    ss.dependency 'TwitterKit5', '5.2.0'
    ss.dependency 'TwitterCore', '3.2.0'

    ss.dependency 'Shimmer', '1.0.2'
  end

  s.subspec "Main-iOS" do |ss|
    ss.dependency 'LykaPods/BuyGem-iOS'
    ss.dependency 'LykaPods/Campaigns-iOS'
    ss.dependency 'LykaPods/ChatIOSSkeleton'
    ss.dependency 'LykaPods/Commons-iOS'
    ss.dependency 'LykaPods/Community-iOS'
    ss.dependency 'LykaPods/Core-iOS'
    ss.dependency 'LykaPods/Games-iOS'
    ss.dependency 'LykaPods/Live-iOS'
    ss.dependency 'LykaPods/Notification-iOS'
    ss.dependency 'LykaPods/Onboarding-iOS'
    ss.dependency 'LykaPods/Rankings-iOS'
    ss.dependency 'LykaPods/Shop-iOS'
    ss.dependency 'LykaPods/Ultra-rate-iOS'
    ss.dependency 'LykaPods/Video-Cache-iOS'
    ss.dependency 'LykaPods/Wallet-iOS'

    ss.dependency 'UICircularProgressRing', '7.0.0'
    ss.dependency 'ActiveLabel', '1.1.0'
    ss.dependency 'CreditCardForm', '0.2.0'
    ss.dependency 'emojidataios', '0.6.0'
    ss.dependency 'Hero', '1.5.0'
    ss.dependency 'PryntTrimmerView', '4.0.2'
    ss.dependency 'SAMKeychain', '1.5.3'
    ss.dependency 'Stripe', '19.1.1'
    ss.dependency 'Instabug','~> 10.0.3'
    ss.dependency 'AWSS3', '2.19.1'
    ss.dependency 'AWSCore', '2.19.1'
  end

end
