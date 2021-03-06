#
# Be sure to run `pod lib lint BuriedPointSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BuriedPointSDK'
  s.version          = '0.1.3'
  s.summary          = 'A short description of BuriedPointSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/kaige1123/BuriedPointSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kaige1123' => '948158677@qq.com' }
  s.source           = { :git => 'https://github.com/kaige1123/BuriedPointSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  #s.source_files = 'BuriedPointSDK/Classes/**/*'
  
  #自己的逻辑代码#自己的逻辑代码
  s.source_files  = "BuriedPointSDK/Classes/**/*.{h,m}"
  #依赖自己的或别人的Framework文件
  #s.vendored_frameworks = 'BuriedPointSDK/Classes/*.framework'
  
   s.resource_bundles = {
     'BuriedPointSDK' => ['BuriedPointSDK/Assets/*']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
