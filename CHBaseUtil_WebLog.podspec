#
# Be sure to run `pod lib lint CHWebLog.podspec' to ensure this is a
# valid spec before submitting.

# pod lib lint CHWebLog/CHBaseUtil_WebLog.podspec  --allow-warnings

# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CHBaseUtil_WebLog'
  s.version          = '0.1.0'
  s.summary          = 'CHBaseUtil_WebLog 用于ios objc 调试的时候把日志输出到指定的本地文件,！！！ created by 峰云逸飞-李长鸿 ！！！有任何问题请给我留言交流'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
CHBaseUtil_WebLog 用于ios objc 调试的时候把日志输出到指定的本地文件，配合python服务器
                       DESC

  s.homepage         = 'https://github.com/lichanghong/CHWebLog'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lichanghong' => 'lichanghong@soyoung.com' }
  s.source           = { :git => 'https://github.com/lichanghong/CHWebLog.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CHWebLog/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CHWebLog' => ['CHWebLog/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
