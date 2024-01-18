# Gemini2vl

## 功能说明：

提供Gemini2vl相机原始图像输入，支持rgb8，ir8bit实时流数据。

## 机器人实物：


| 设备名称             | 生产厂家 | 作用                                 | 参考链接                                |
| :--------------------- | ---------- | -------------------------------------- | ----------------------------------------- |
| Orbbec Gemini2vl相机 | 奥比中光 | 3D结构光深度视觉相机，点云数据输入源 | https://item.jd.com/10085187988079.html |
|                      |          |                                      |                                         |

## 应用说明：

运行本应用示例，可以获取到Gemini2vl相机实时流数据

### 功能包安装

1、安装foxglove

或直接采用奥比附带提供的docker环境

### 编译

1、可以全编译 colcon build

2、单独编译本功能包 colcon build --packages-select camera

### 运行

source install/setup.bash

ros2 run camera gemini2vl

### 显示

通过foxglove或rviz2可以实时查看图像

## 接口说明：

### 话题、服务、动作


| 名称                       | 消息类型                 | 说明                     | 发起端 | 接收端              |
| ---------------------------- | -------------------------- | -------------------------- | -------- | --------------------- |
| /robot\_sdk/left\_ir       | sensor\_msgs::msg::Image | topic发布摄像头左ir图像  | 本模块 | 无                  |
| /robot\_sdk/right\_ir      | sensor\_msgs::msg::Image | topic发布摄像头右ir图像  | 本模块 | 无                  |
| /robot\_sdk/camera\_result | sensor\_msgs::msg::Image | topic发布摄像头右rgb图像 | 本模块 | body\_tracking\_alg |

### 参数


| 名称(参数名) | 类型 | 说明 | 是否必须 | 支持的配置 | 默认值 | 是否支持运行时动态配置 |
| -------------- | ------ | ------ | ---------- | ------------ | -------- | ------------------------ |
| 无           |      |      |          |            |        |                        |
|              |      |      |          |            |        |                        |

## 常见问题：

1、usb相机需要root权限运行，使用如下指令解决普通用户打开相机

sudo cp 99-orbbec.rules /etc/udev/rules.d/
