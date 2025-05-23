应用架构
入口点 (ArQianApp.swift)

管理应用启动流程，根据 isStarted 状态决定显示启动页还是主界面

使用 @State 属性包装器管理应用状态

启动页面 (StartPage.swift)

动态展示一系列文本动画效果

使用定时器自动切换文本内容

包含淡入淡出和位置移动动画效果

动画完成后自动跳转到主界面

主界面 (ContentView.swift)

采用 TabView 实现底部导航栏

包含五个主要功能模块：

首页 (HomePage)

发现 (FindPage)

艺术 (ArtPage)

城市 (CityPage)

用户 (UserPage)

支持选中状态下的图标切换

功能页面 (HomePage.swift, FindPage.swift, ArtPage.swift, CityPage.swift, UserPage.swift)

每个功能模块都有独立的视图文件

目前大部分为占位内容，展示基础框架

特色功能
流畅的启动动画：

文本动态变化

平滑的过渡效果

自动导航到主界面

可扩展的导航结构：

易于添加新的功能模块

清晰的视图层次结构

响应式设计：

使用 SwiftUI 的状态管理

自动适应不同设备尺寸

技术特点
纯 SwiftUI 实现，无 Storyboard

使用 @State 和 @Binding 进行状态管理

内置预览功能，方便开发调试

支持多种屏幕方向

扩展性
当前应用提供了基础框架，可以轻松扩展：

为各功能页面添加实际内容

增加更多交互功能

集成后端数据服务

添加更多动画效果
