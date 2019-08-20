# Be sure to run `pod lib lint AETAPjsip-ios.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'AETAPjsip-ios'
s.version          = '0.1.0'
s.summary          = 'A short description of AETAPjsip-ios.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage         = 'https://github.com/remydeme/AETAPjsip-ios'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'remydeme' => 'remy.deme@epita.fr' }
s.source           = { :git => 'https://git@github.com:Remydeme/AETAPjsip-ios.git', :tag => s.version.to_s }


s.platform              = :ios, '9.0'
s.requires_arc          = false

s.preserve_paths        = 'VialerPJSIP.framework/*'
s.public_header_files   = 'VialerPJSIP.framework/Versions/A/Headers/**/*.{h,hpp}'
s.source_files            = 'VialerPJSIP.framework/Versions/A/Headers/**/*.{h,hpp}'
s.vendored_frameworks   = 'VialerPJSIP.framework'

s.libraries             = 'stdc++'
s.frameworks            = 'AudioToolbox', 'AVFoundation', 'CFNetwork',  'CoreMedia'
s.xcconfig = {
'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1',
}

end
