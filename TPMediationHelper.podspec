Pod::Spec.new do |spec|
  spec.name         = "TPMediationHelper"
  spec.version      = "1.2.0"
  spec.summary      = "TradPlus Mediation Helper for iOS."
  spec.description  = <<-DESC
            TradPlusSDK Mediation Helper for iOS. 
                   DESC
  spec.homepage     = "https://github.com/tradplus/pod_TPMediationHelper_sdk"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "tradplus" => "service@tradplus.com" }
  spec.source       = { :git => "https://github.com/tradplus/pod_TPMediationHelper_sdk.git", :tag => spec.version }
  spec.platform     = :ios, '12.0'
  spec.ios.deployment_target = '12.0'
  spec.requires_arc = true
  spec.frameworks = 'SystemConfiguration', 'CoreGraphics','Foundation','UIKit'
  spec.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  spec.vendored_frameworks = 'TPMediationHelper/TPMediationHelper.xcframework'
  spec.resource = 'TPMediationHelper/TPMediationHelper.bundle'
end
