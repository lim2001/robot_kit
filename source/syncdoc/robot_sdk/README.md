# robot_kit/robot_sdk
# 项目名称
本项目是基于奥比中光机器人开发者平台的主要功能包 robot_kit/robot_sdk  

<br>  

代码仓库：<https://code.orbbec.com.cn/robot_kit/robot_sdk>  
拉代码： ```git clone gitlab@code.orbbec.com.cn:robot_kit/robot_sdk.git```


# 安装使用  
进入tools目录下，可使用Dockerfile文件编译镜像，具体步骤可参考：链接   镜像编译  （待上线）
  
  
<br>  
  
# 文档
《[奥比中光] robot_kit应用文档》：链接   （待上线）
  
  
<br> 

# 编译方式:  

**方式一:**  ros2标准编译  
colcon build
colcon build --packages-select <pkg_name>  

**方式二:**  编译脚本:  
./autobuild.sh  all                 // 编译所有  
./autobuild.sh + pkg + <pkg_name>  //快捷编译功能模块  
./autobuild.sh  help              // 查看脚本菜单支持的功能  

<br>

# 快捷运行脚本：

./run.sh + <pkg_name>  快捷运行功能模块

<br>

# 代码提交commit注释规范：

[master][new][app]: 提交描述  
    
example:  
[dev][improve][camera]:  优化摄像头影像效果  
[master][fix][app]:  解决摄像头在强背光场景下的水波纹抖动问题  
[master][new][app]:  新增手势控制小车行动功能  
[分支名]+[修改类型] +[模块或所在层]: + 修改描述  

[修改类型]说明：  
[fix]       ------- 修复 bug，如属于修复测试的bug，则需要提供测试组(bugzilla反馈的BugID)  
[new]     -------新增功能  
[improve] -------优化、重构、性能改善  
[modify]梳理调整代码或功能、[patch] 补丁、[test] 临时修改、[revert]回退等  


<br>

# 编码风格：
clang-format  已集成，基于开源LLVM风格：  
change list：  
1、函数和类的大括号采用换行方式（其它不换行）  
  
  
  
  
<br>
<br>  

# 文件目录结构：
```
├── alg            ##算法能力库  
│   ├── control  
│   ├── cv  
│   ├── motion  
│   ├── planning  
│   ├── slam  
│   └── vision  
├── app                   ##顶层应用业务 、客制化应用  
│   └── sample  
│       ├── body_tracking  
│       ├── config  
│       ├── gesture_control  
│       ├── launch  
│       ├── manager  
│       ├── shell  
├── common       ##公共基础能力组件  
│   ├── interfaces  
│   │   ├── action  
│   │   ├── msg  
│   │   └── srv  
│   ├── shell  
│   │   ├── include  
│   │   └── src  
│   ├── tools  
│   │   ├── BreakPad  
│   │   ├── FlameGraph  
│   │   └── performance_test  
│   └── utils  
│       ├── include  
│       └── src  
├── communication  ##对外通信接口层：局域网通信、云服务通信  
│   ├── cloud    
│   └── websocket    
├── device               ##外设、设备  
│   ├── audio  
│   ├── bt  
│   ├── led  
│   └── wifi  
├── framework       ##中间层  
│   ├── moveit2  
│   └── nav2  
├── sensor              ##传感器、摄像头  
│   ├── camera          ##摄像头  
│   ├── gps  
│   ├── imu  
│   ├── lidar  
│   ├── tof  
│   ├── ultrasonic  
│   └── uwb  
├── simulation    ##仿真  
└── thirdparty     ##第三方库  
```
<br>
