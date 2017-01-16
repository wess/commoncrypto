Pod::Spec.new do |s|
  s.name            = 'CommonCrypto'
  s.version         = '0.0.1'
  s.summary         = 'Swift module map for CommonCrypto.'
  s.description     = 'Module maps for importing CommonCrypto C libs to Swift.'
  s.homepage        = 'https://github.com/kmussel/commoncrypto'
  s.license         = { :type => 'Public'}
  s.author          = 'Kevin Musselman'
  s.platform        = :ios, '9.0'
  s.source          = { :git => 'git@github.com:kmussel/commoncrypto.git', tag: "#{s.version}" }
  s.module_name     = 'CommonCrypto'
  s.platforms       = { :ios => "9.0" }
  s.source_files    = "Sources/**/*.swift"
  s.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS[config=Debug][sdk=*][arch=*]' => 'DEBUG' }

  s.xcconfig         = { 'HEADER_SEARCH_PATHS' =>           '$(SDKROOT)/usr/include/CommonCrypto/CommonCrypto.h'}
  s.preserve_paths = 'CocoaPods/**/*'
  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS[sdk=macosx*]'           => '$(PODS_ROOT)/CommonCrypto/CocoaPods/macosx',
    'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'         => '$(PODS_ROOT)/CommonCrypto/CocoaPods/iphoneos',
    'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'  => '$(PODS_ROOT)/CommonCrypto/CocoaPods/iphonesimulator',
    'SWIFT_INCLUDE_PATHS[sdk=appletvos*]'        => '$(PODS_ROOT)/CommonCrypto/CocoaPods/appletvos',
    'SWIFT_INCLUDE_PATHS[sdk=appletvsimulator*]' => '$(PODS_ROOT)/CommonCrypto/CocoaPods/appletvsimulator',
    'SWIFT_INCLUDE_PATHS[sdk=watchos*]'          => '$(PODS_ROOT)/CommonCrypto/CocoaPods/watchos',
    'SWIFT_INCLUDE_PATHS[sdk=watchsimulator*]'   => '$(PODS_ROOT)/CommonCrypto/CocoaPods/watchsimulator'
  }
  s.prepare_command = <<-CMD
               ./CocoaPods/injectXcodePath.sh
  CMD
end
