# RobotDoc应用文档


**编译方法：**

- ./autobuild.sh （使用脚本编译，该脚本编译后会打包docs文档及渲染设置，也支持sphinx原生编译指令make html，需自行打包）
- 打开docs/index.html查看效果


**同步robot_sdk的README.md文件方法：**


- ./autobuild.sh syncdoc

该指令会把robot_sdk目录下所有模块的README.md文件，并包含路径拷贝过来robot_doc/source/syncdoc目录下，包括image文件夹和图片，实现了代码README.md文档半自动同步。同步之后重新编译doc。开发者只需要维护代码对应模块的md一份文档，保持最新。



# RobotDoc应用文档详细说明

**采用方式：**

1、文档格式 markdown

2、文档转换工具 Sphinx

3、托管 github

<br>

# gitlab：

本项目源码地址： https://code.orbbec.com.cn/robot_kit/robot_doc

# github （待上线）

本项目源码地址 ：https://code.orbbec.com.cn/robot_kit/robot_doc  待上线
本应用文档阅读链接 ：https://lim2001.github.io/robot_kit/index.html   待上线

<br>

# 文档编写规范

1、框图、软件框架建议原则上采用processon、visio工具绘图，目的是为了保持风格统一（特殊图除外）

2、采用标准markdown格式，可使用vscode的Vditor插件编辑

<br>

# 编译环境

pip3 install sphinx

pip3 install recommonmark

pip3 install sphinx_markdown_tables

pip3 install sphinx_rtd_theme

# 编译

- 执行编译脚本 ./autobuild 编译（推荐，该脚本编译后会打包docs文档及渲染设置）。 也支持sphinx原生编译指令make html
- 打开docs/index.html查看效果

<br>

# 提交

git add 、git commit 添加注释、git push提交代码

提交完后，务必要上线网页打开检查一下，检查网页效果无误

<br>

# 定制化部分

说明：定制化的配置都在**conf.py**中设置。也需要安装一些支持库

1. 更改样式主题。我这里以 `sphinx_rtd_theme`为例子，其他主题可自行百度。

* 安装 `sphinx_rtd_theme`:    ` pip install sphinx_rtd_theme`

2. 安装markdown语法支持插件：`pip install myst-parser`
3. 安装支持mermaid渲染插件: `pip install sphinxcontrib.mermaid`
4. 安装代码块一键复制按钮插件：`pip install sphinx_copybutton`
5. 可以使用vscode 编辑markdown文件文档，推荐安装markdown预览编辑插件
