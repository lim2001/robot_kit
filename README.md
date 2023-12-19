# 关于本项目robot_kit应用文档

**采用方式：**

1、文档格式 markdown

2、文档转换工具 Sphinx

3、托管 gitbub


本应用文档阅读链接 ：《 [奥比中光] robot_kit 应用文档  》 https://lim2001.github.io/robot_kit/index.html


本项目的github地址 ：https://github.com/orbbec/robot_kit


<br>

# 文档编写规范

1、框图、软件框架建议原则上采用processon工具、visio绘图，目的是为了保持风格统一（特殊图除外）

2、采用标准markdown


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

- 执行 `make html 或 ./autobuild`
- 打开_build/html/index.html查看效果
