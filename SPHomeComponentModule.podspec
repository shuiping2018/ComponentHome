#
#  Be sure to run `pod spec lint SPHomeComponentModule.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "SPHomeComponentModule"
  s.version      = "0.0.3"
  s.summary      = "水平的组件库."

  s.description  = <<-DESC

                  这是水平的 SPHomeComponentModule 组件库
                   DESC

  s.homepage     = "https://github.com/shuiping2018/ComponentHome"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "wangshuiping" => "1294093906@qq.com" }

  s.platform     = :ios
  # s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/shuiping2018/ComponentHome.git", :tag => "#{s.version}" }


  s.source_files  = "ComponentHome/SPHomeComponentModule/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
  s.dependency "ComponentLogin_Category"

end
