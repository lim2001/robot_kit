# Tracking robot Bringup 启动

## 功能说明：

启动Tracking 机器人运行，启动后机器人识别人体人脸，并跟随人体运动

## 机器人实物：


| 设备名称             | 生产厂家 | 作用                                 | 参考链接                                |
| :--------------------- | ---------- | -------------------------------------- | ----------------------------------------- |
| Orbbec Gemini2vl相机 | 奥比中光 | 3D结构光深度视觉相机，点云数据输入源 | https://item.jd.com/10085187988079.html |
|                      |          |                                      |                                         |

## 应用说明：

启动步骤：

1、确保设备连接上gemini摄像头
2、source install/setup.bash  (若设备执行器是zsh，则使用source install/setup.zsh)
3、ros2 launch bringup bringup_launch.py

<br>

此时launch启动应用，并自动打开gazebo，加载两轮差速小车模型（设备需要安装好gazebo和小车模型）

控制方法：识别到人脸，根据人脸的移动方向控制机器人底盘做前进后退转弯运动（在gazebo画面中仿真）：

人脸向上移动-----小车前进

人脸向下移动-----小车后退

人脸向左移动-----小车左转弯

人脸向右移动-----小车右转弯

原理，body_tracking实现判断人脸移动方向趋势，通过发布发布话题/cmd_vel，以控制底盘移动

## 仿真

通过foxglove可以查看摄像头识别人脸框的情况，通过gazebo可以模拟演示人脸移动控制小车运动情况

## 该Demo运行如下几个包

1.传感器层：Orbbec 传感器3D摄像头 gemini2vl

2.算法层： 人脸实时监测算法 tracking_alg

3.应用层：人脸实时监测位置控制 turtlebot3_gazebo  gazebo仿真环境下 turtlebot3小车运动。

## 依赖

依赖turtlebot3_gazebo 包。

启动命令： ros2 launch turtlebot3_gazebo empty_world.launch.py

## 常见问题：

由于仿真小车依赖turtlebot3_gazebo 安装包。

建议客户环境如下二进制命令安装turtlebot3_gazebo

sudo apt install ros-<ros2-distro>-turtlebot3*

如果客户使用turtlebot3_gazebo 源码安装需要根据安装路径修改 bringup_launch.py文件中

PythonLaunchDescriptionSource('/opt/ros/humble/share/turtlebot3_gazebo/launch/empty_world.launch.py')

该行中empty_world.launch.py 文件路径。
