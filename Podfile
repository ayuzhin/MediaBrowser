platform :ios, '14.0'

target 'MediaBrowser' do
  use_frameworks!

  pod 'SDWebImage'
  pod 'UICircularProgressRing'
end

target 'MediaBrowserDemo' do
  use_frameworks!

  pod "MediaBrowser", :path => "./"
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '14.0'
    end
  end
end
