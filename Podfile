use_frameworks!
platform :ios, '8.0'

install! 'cocoapods', :deterministic_uuids => false

target 'OCTestCoreFramework' do
  pod 'FDFullscreenPopGesture'
  pod 'SnapKit', '~> 3.2.0'
  pod 'FLEX'
  pod 'KMCGeigerCounter'
  pod 'Masonry'
  pod 'ReactiveCocoa', '~> 2.5'
  
  post_install do |installer|
      installer.pods_project.targets.each do |target|
          if target.name == '<insert target name of your pod here>'
              target.build_configurations.each do |config|
                  config.build_settings['SWIFT_VERSION'] = '3.2'
              end
          end
      end
  end
end
