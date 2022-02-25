#
#  Be sure to run `pod spec lint TUnionpay.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "TUnionpayMini"
  spec.version      = "3.4.6"
  spec.summary      = "Terminus Mobile UnionPay sdk"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
  银联线上收银台iOS SDK; https://open.unionpay.com/tjweb/acproduct/list?apiSvcId=3021
                   DESC

  spec.homepage     = "https://github.com/TerminusMobile/unionpay"

  spec.license      = "MIT"

  spec.author             = { "yh" => "yh@terminus.io" }

  spec.ios.deployment_target = "9.0"


  spec.source       = { :git => "https://github.com/TerminusMobile/unionpay.git"}
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  spec.source_files  =  "inc/**/*.{h,m}"
  spec.frameworks = "Foundation", "UIKit", "CFNetwork", "SystemConfiguration"
  spec.libraries = "z", "stdc++"
  spec.vendored_libraries = "libs/libPaymentControlMini.a"
  # spec.public_header_files = "Classes/**/*.h"
end
