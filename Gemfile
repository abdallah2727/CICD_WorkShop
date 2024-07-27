source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }
gem 'activesupport', '~> 6.1'  
gem 'cocoapods', '~> 1.15.2'     
gem 'fastlane', '2.220.0'
gem 'dotenv', '2.8.1'
plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)