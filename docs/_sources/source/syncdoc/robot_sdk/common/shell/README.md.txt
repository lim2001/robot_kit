# shell模块

## 概述

shell 模块提供开发者常用人机交互调试指令入口，方便开发者调试测试开发

## 机器人实物：

| 设备名称             | 生产厂家 | 作用                                 | 参考链接                                |
| :------------------- | -------- | ------------------------------------ | --------------------------------------- |
| Orbbec Gemini2vl相机 | 奥比中光 | 3D结构光深度视觉相机，点云数据输入源 | https://item.jd.com/10085187988079.html |
|                      |          |                                      |                                         |

## 应用说明

shell 模块提供通用型快捷指令调试测试交互入口和解析器。

shell模块用作人机交互的便捷入口，提供快捷指令方便调测试参数性能等，其原理也是基于ros2标准topic发布订阅消息通信。

### 编译

1、可以全编译 colcon build

2、单独编译本功能包 colcon build --packages-select shell

### 运行

ros2 run shell shell

## 接口说明

### 话题、服务、动作

| 名称   | 消息类型              | 说明                            | 发起端   | 接收端               |
| ------ | --------------------- | ------------------------------- | -------- | -------------------- |
| /shell | std_msgs::msg::String | shell模块订阅标准输入字符串指令 | 字符终端 | 本模块base controler |
|        |                       |                                 |          |                      |
