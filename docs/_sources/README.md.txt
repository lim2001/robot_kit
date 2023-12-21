# 关于本项目RobotKit应用文档

**采用方式：**

1、文档格式 markdown

2、文档转换工具 Sphinx

3、托管 github


<br>


本应用文档阅读链接 ：《 [奥比中光] RobotKit 应用文档  》

https://lim2001.github.io/robot_kit/index.html

本文档的源码地址 ：https://github.com/lim2001/robot_kit

RobotKit SDK 开源代码地址： https://github.com/xxxxxx待定

<br>

# 文档编写规范

1、框图、软件框架建议原则上采用processon、visio工具绘图，目的是为了保持风格统一（特殊图除外）

2、采用标准markdown

<br>

# 定制化部分

说明：定制化的配置都在**doc/conf.py**中设置。因为有一些额外需求，因此需要定制化。

1. 更改样式主题。我这里以 `sphinx_rtd_theme`为例子，其他主题可自行百度。

* 安装 `sphinx_rtd_theme`:    ` pip install sphinx_rtd_theme`

2. 安装markdown语法支持插件：`pip install myst-parser`
3. 安装支持mermaid渲染插件: `pip install sphinxcontrib.mermaid`

```text
```{mermaid}  # 注意这里需要{}包裹
graph LR
  a --> b
```

4. 安装代码块一键复制按钮插件：`pip install sphinx_copybutton`
5. 重新生成html，查看效果

- 执行 `./autobuild ` 编译，或make html
- 打开docs/index.html查看效果
