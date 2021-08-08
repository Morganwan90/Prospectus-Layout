# 招股说明书排版工具
本工具主要基于林铖的审计报告排版工具 Version 1.5.2 基础上，依据招股说明书格式以及个人习惯修改。

————Morgan.Wan

![image-20210805130518-cqad1kp](https://user-images.githubusercontent.com/61633409/128627960-9d8f17e1-718a-43f0-9a05-32c48266d390.png)

## 一、使用方法

 =**！导入前需将 word 全部关闭，替换模板文件会清空自定义的样式**

* ### （一）查找模板文件所在处

  * 如果你有 everything 的话就可以搜索一下该文件名，一般这个文件会在 C:\Users\【你自己的用户名】\AppData\Roaming\Microsoft\Templates
  * 【你自己的用户名】是指你系统的用户名，每个人都不一样， appdata 是隐藏文件夹，看不到的在文件夹里自行设置看到隐藏的文件
  * 有些笔记本出厂自带的 office 套件不在这个位置，建议下个 everything
* ### （二）替换模板文件

  * 将原有 Normal.dotm 复制至其他地方保存作为备份
  * **将“招股书排版工具 2.0.dotm”文件重命名为“Normal.dotm”**
  * 替换原有的 Normal 文件

## 二、其余说明

（一）鼠标停留在对应按钮上既有相应使用说明

（二）直接打开 vba 代码（Alt+F11），可以对代码进行相应调整

（三）工具栏修改需要使用 Custom UI Editor/OfficeRibbonXEditor

（四）如安装过之前 v1 代码形成的旧菜单栏，可在“文件”-选择”-“自定义功能区中直接删除该选择卡

**（五）关于执行动作后撤回**

由于直接使用样式有时候字体并不会变更，所以 VBA 中进行了第二次字体替换等操作。
从操作上虽然只是按了一次，但实际上 vba 进行了多次操作，尽管已经采用了样式来减少步骤，但是仍需要多次执行撤回操作才能回到初始样式。

## 三、参考文档

① 林铖-《审计报告排版工具》

②Microsoft Office 官网文档 《Docs/Office VBA 参考》

③ 公众号“茶瓜子休闲馆”《Word 排版大杀器》
