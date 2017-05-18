Pod::Spec.new do |s|
s.name         = "HNSuperButton"                                 // 仓库名字
s.version      = "0.0.1"                                 // 仓库版本
s.summary      = "interesting button"                   // 仓库简介，搜索的关键词
s.homepage     = "https://github.com/hanamichi-code/HNSuperButton"   // 主页地址
s.license      = "MIT"                                   // 许可证
# s.license      = { :type => "MIT", :file => "LICENSE" }
s.author       = { "Hanamichi" => "zkhaoa001@163.com" } // 作者
# s.platform     = :ios
s.platform     = :ios, "9.0"                              // 仓库使用平台
s.source       = { :git => "https://github.com/hanamichi-code/HNSuperButton.git", :tag => s.version }   // Git仓库地址

s.source_files  = "HNSuperButton/HNSuperButton/*.{h,m}"                       // 需要包含的源文件
s.requires_arc = true                                     // 是否要求ARC
# s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }    // 指定只用swift 3.0版本
end
