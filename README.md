# BuriedPointSDK

iOS 高级篇 - 《SDK制作完整篇》
https://www.jianshu.com/p/c068a8fbba17

pod lib create xxx   


#
# Be sure to run `pod lib lint OMCDriveHelper.podspec' to ensure this is a
# valid spec before submitting.


Pod::Spec.new do |s|
  s.name             = 'DemoSDKSample'
  s.version          = '0.1.4'
  s.summary          = 'A short description of DemoSDKSample.'
  s.description      = <<-DESC
TODO: Add long description of the pod here，Add long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/baiwulong/DemoSDKSample'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'baiwulong' => '1204803180@qq.com' }
  s.source           = { :git => 'https://github.com/baiwulong/DemoSDKSample.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  #自己的逻辑代码
  s.source_files  = "DemoSDKSample/Classes/**/*.{h,m}"
  #依赖自己的或别人的Framework文件
  s.vendored_frameworks = 'DemoSDKSample/Classes/*.framework'
  #系统依赖库
  s.frameworks = 'UIKit', 'CoreLocation','Foundation'  
  #依赖第三方框架
  s.dependency 'AFNetworking'
  s.dependency 'Qiniu'
  s.dependency 'FMDB'
  
end


注意：远程仓库不需要创建gitignore文件，因为pod lib创建了
提交自己仓库代码到远程仓库
git init ：初始化git
git status ： 查看状态，如果有不想要的文件，可以用gitignore忽略掉
提交到本地缓存区 `git add .``
提交到本地仓库 git commit -m ''
查看远程仓库地址 git remote(查看有没有远程地址)
绑定远程地址 git remote add origin 远程仓库地址
推送自己代码到远程仓库 git push origin master
git tag -a 0.0.1 -m '0.0.1' :添加标签tag
git push --tags：推送本地标签到远程仓库中


*   注册trunk，不是任何人都能推送，因为cocoapods依赖trunk服务器管理，所以需要通过trunk推送自己的podspec（[cocoapods官网](https://link.jianshu.com?t=https://blog.cocoapods.org/CocoaPods-Trunk/)）
*   命令：`pod trunk register EMAIL [NAME]`

*   pod trunk register [58999050@qq.com](https://link.jianshu.com?t=mailto:58999050@qq.com) yuanzheng
*   验证成功后，点击邮箱就好了，打开会有点慢.


pod trunk push HttpManager.podspec --allow-warnings


怎么更新pod索引文件？
原理：pod setup成功后会生成~/Library/Caches/CocoaPods/search_index.json文件
把search_index.json文件文件删除，重新执行pod search，就会重新更新索引.
终端执行：
rm ~/Library/Caches/CocoaPods/search_index.json
pod search xxx



