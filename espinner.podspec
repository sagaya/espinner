#
# Be sure to run `pod lib lint espinner.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'espinner'
  s.version          = '0.1.1'
  s.summary          = 'Easy activity indicator with different colors'

# This description is used to generate tags and improve search results.
#  * Think: What does it do? Why did you write it? What is the focus?


  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/cosmo1234/espinner'
  s.screenshots     = 'https://s3.postimg.org/ckjy8tqhb/image.gif', 'https://s3.postimg.org/lguqcrh3j/image.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cosmo1234' => 'harpheezsagaya@gmail.com' }
  s.source           = { :git => 'https://github.com/cosmo1234/espinner.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/___shaggy_'

  s.ios.deployment_target = '8.0'

  s.source_files = 'espinner/Classes/**/*'
  
  # s.resource_bundles = {
  #   'espinner' => ['espinner/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
