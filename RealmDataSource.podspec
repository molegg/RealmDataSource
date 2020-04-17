#
# Be sure to run `pod lib lint RealmDataSource.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RealmDataSource'
  s.version          = '0.1.0'
  s.summary          = 'A easy to use realm data source.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A easy to use realm data source
                       DESC

  s.homepage         = 'https://github.com/molegg/RealmDataSource'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'molegg' => 'matt.olegg@gmail.com' }
  s.source           = { :git => 'https://github.com/molegg/RealmDataSource.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'RealmDataSource/Classes/*'
  
  # s.resource_bundles = {
  #   'RealmDataSource' => ['RealmDataSource/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Realm'
end
