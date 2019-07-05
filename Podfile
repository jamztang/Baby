# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
source 'git@github.com:GoodNotes/Specs.git'

platform :ios, '12.0'
install! 'cocoapods', :disable_input_output_paths => true

target 'Baby' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'HockeySDK', :subspecs => ['CrashOnlyLib'], :inhibit_warnings => true

  target 'BabyTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'BabyUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer|

  # Cocoapods 1.7.2 sets default SWIFT_VERSION of Pods.xcodeproj to
  # '5.0' by default, switch isn't comaptibile with Xcode 10.1
  print "Setting the default SWIFT_VERSION to 4.2\n"
  installer.pods_project.build_configurations.each do |config|
    config.build_settings['SWIFT_VERSION'] = '4.2'
  end

  installer.pods_project.targets.each do |target|
    # override Cocoapods generated product bundle identifier
    # ref: https://goodnotes.quip.com/V7ScA3LU0hWa/Bug-BundleforClass-do-not-work-as-expected-on-iOS-12
    if target.name == 'GoodNotesCore'
        target.build_configurations.each do |config|
            config.build_settings['PRODUCT_BUNDLE_IDENTIFIER'] = 'com.goodnotes.GoodNotesCore'
        end
    end

	# pods with bundles
	if target.name == 'HockeySDK-HockeySDKResources'
        print "Setting team to `" + target.name + "`"
        target.build_configurations.each do |config|
            config.build_settings['DEVELOPMENT_TEAM'] = '5UAR78B6YU'
        end
	end
  end

end

