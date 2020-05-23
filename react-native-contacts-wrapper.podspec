package = JSON.parse(File.read(File.join(__dir__, "package.json")))
version = package['version']

Pod::Spec.new do |s|
  s.name             = "react-native-contacts-wrapper"
  s.version          = version
  s.summary          = package["description"]
  s.requires_arc = true
  s.license      = 'MIT'
  s.homepage     = 'n/a'
  s.authors      = { "ivpusic" => "" }
  s.source       = { :git => "https://github.com/LynxITDigital/react-native-contacts-wrapper.git", :tag => 'v#{version}'}
  s.source_files = 'ios/RCTSelectContact/*.{h,m}'
  s.platform     = :ios, "9.0"
  s.dependency 'React-Core'
end


#if __has_include("RCTDefines.h")
#import "RCTDefines.h"
#else
#import <React/RCTDefines.h>
#endif