Pod::Spec.new do |s|
    s.name             = 'SFGAppLovinAdapter'
    s.version          = '12.3.1.0'
    s.summary          = 'AppLovinAdapter'

    s.description      = <<-DESC
            'AppLovinAdapter is a AD Adapter SDK'
                       DESC

    s.homepage         = 'https://github.com/xiaofu666/SFGAppLovinAdapter'
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author       = { "小富" => "3290235031@qq.com" }
    s.source       = { :git => 'https://github.com/xiaofu666/SFGAppLovinAdapter.git', :tag => s.version.to_s }

    s.platform     = :ios, "12.0"
    s.ios.deployment_target = '12.0'
    s.static_framework = true
    s.requires_arc = true
    s.swift_versions = '5.0'
    
    s.frameworks = 'AssetsLibrary', 'MapKit', 'JavaScriptCore', 'StoreKit', 'MobileCoreServices', 'WebKit', 'MediaPlayer', 'CoreMedia', 'AVFoundation', 'CoreLocation', 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'CoreMotion', 'Security', 'QuartzCore', 'CoreGraphics', 'SafariServices', 'UIKit', 'Foundation', 'AppTrackingTransparency', 'DeviceCheck'
    s.libraries = 'c++', 'c++abi', 'resolv', 'xml2', 'bz2', 'z', 'iconv', 'sqlite3'
  
    s.xcconfig =   { 'OTHER_LDFLAGS' => ['-lObjC']}
    s.pod_target_xcconfig =   { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i' }

    s.vendored_frameworks = "AppLovinAdapter.xcframework"
end
