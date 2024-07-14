# Uncomment the next line to define a global platform for your project
 platform :ios, '17.0'

target 'CA' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  pod 'Firebase/RemoteConfig' 
  pod 'FirebaseMessaging'	
  # Pods for CA

  target 'CATests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'CAUITests' do
    # Pods for testing
  end

end

target 'NBE' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  pod 'Firebase/RemoteConfig' 
  pod 'Firebase/Messaging'
  # Pods for NBE

  target 'NBETests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'NBEUITests' do
    # Pods for testing
  end

end

post_install do |installer|

    installer.generated_projects.each do |project|

        project.targets.each do |target|

            target.build_configurations.each do |config|

                config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '17.0'

            end

        end

    end

end

 

 