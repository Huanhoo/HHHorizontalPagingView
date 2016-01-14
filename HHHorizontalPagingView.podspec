

Pod::Spec.new do |s|
s.name             = "HHHorizontalPagingView"
s.version          = "1.2.1"
s.summary          = "HHHorizontalPagingView是一个实现上下滚动时菜单悬停在顶端，并且可以左右滑动切换的视图"

s.homepage         = "https://github.com/Huanhoo/HHHorizontalPagingView"
s.license          = 'MIT'
s.author           = "Huanhoo"
s.source           = { :git => "https://github.com/Huanhoo/HHHorizontalPagingView.git", :tag => "1.2.1" }

s.platform     = :ios, '7.0'
s.requires_arc = true

s.source_files = 'HHHorizontalPagingView/*'

s.frameworks = 'UIKit'
end
