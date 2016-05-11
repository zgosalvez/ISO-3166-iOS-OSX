#
# Be sure to run `pod lib lint ISO3166.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ISO3166"
  s.version          = "0.1.0"
  s.summary          = "ISO 3166 Country Codes: codes for countries, codes for subdivisions, and formerly used codes."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
This project includes ISO 3166 Country Codes, specifically codes for countries, codes for subdivisions, and formerly used codes.
                       DESC

  s.homepage         = "https://github.com/zgosalvez/ISO-3166-iOS-OSX"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Zennon Gosalvez" => "zgosalvez@alumni.ateneo.edu" }
  s.source           = { :git => "https://github.com/zgosalvez/ISO-3166-iOS-OSX.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/zgosalvez'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  # s.resource_bundles = {
  #   'ISO3166' => ['Pod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
