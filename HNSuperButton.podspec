Pod::Spec.new do |s|
s.name         = "HNSuperButton"
s.version      = "1.0.0"
s.summary      = "interesting button"
s.homepage     = "https://github.com/hanamichi-code/HNSuperButton"
s.license      = "MIT"
s.author       = { "Hanamichi" => "zkhaoa001@163" }
s.platform     = :ios
s.ios.deployment_target = "8.0"
s.source       = { :git => "https://github.com/hanamichi-code/HNSuperButton.git", :tag => "1.0.0" }
s.requires_arc = true
s.resources    = "HNSuperButton/HNSuperButton/*.{png,xib,nib,bundle}"
s.source_files = "HNSuperButton/HNSuperButton/*.{h,m}"
end
