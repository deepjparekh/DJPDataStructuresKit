
Pod::Spec.new do |s|
  s.name         = "DJPDataStructuresKit"
  s.version      = "0.0.1"
  s.summary      = "A framework written in swift containing implementation of common data structures."
  s.license      = "MIT"
  s.author             =  "Deep Parekh" 
  s.social_media_url   = "http://twitter.com/zeusdeep"
  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.7"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/zeusdeep/DJPDataStructuresKit.git", :tag => "#{s.version}" }
  s.source_files  = "*.{swift}"
  s.homepage = "https://www.linkedin.com/in/deepjparekh/"
end
