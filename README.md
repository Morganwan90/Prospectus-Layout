<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

<!-- PROJECT LOGO -->

## 招股说明书排版工具

<img title="" src="file:///C:/Users/Morgan Wan/AppData/Roaming/marktext/images/2022-01-26-16-11-40-image.png" alt="" width="714">

本工具主要基于林铖的审计报告排版工具基础上，依据招股说明书格式以及个人习惯修改。

————Morgan.Wan

​

## Getting Started

### Prerequisites

❗ **导入前需将 word 全部关闭，替换模板文件会 <u> 清空 </u> 用户自定义样式 ❗**​

### Installation

#### 一、自动替换程序（推荐）

- 执行"自动安装程序.bat"
  
  - ![](C:\Users\Morgan%20Wan\AppData\Roaming\marktext\images\2022-01-26-14-53-44-image.png)

- 程序会自动尝试匹配office默认安装地址以及 PA 标装机的默认地址。

- **确保运行完成后2项处理结果均为“复制了1个文件”，如显示“共享冲突”，请关闭所有word再次尝试自动安装程序。**

- 如显示“**未成功提取地址，请手动替换**”，请参见下列手动替换方法

#### 二、手动替换程序

##### 1、找到模板地址

**非标装机文件默认地址：**

C:\Users\【你自己的用户名】\AppData\Roaming\Microsoft\Templates\Normal.dotm

**PA 标装机文件默认地址：**

D:\Users\【UM 账号】\AppData\Roaming\Microsoft\Templates\Normal.dotm

<u>【你自己的用户名】是指你系统的用户名，每个人都不一样， appdata 是隐藏文件夹，看不到的在文件夹里自行设置看到隐藏的文件</u>

**其他电脑地址（自动程序无法匹配一般都是这个）：**

有些笔记本出厂自带的 office 套件，则模板位置在特殊位置，**建议下个 everything 搜索"Normal.dotm"，找到该文件所在目录**

##### 2、替换模板文件

将原有 Normal.dotm 复制至其他地方保存作为备份

将“招股书排版工具 2.X.dotm”文件重命名为“Normal.dotm”

替换原有的 Normal 文件

## Usage

### 1、信息栏

![](C:\Users\Morgan%20Wan\AppData\Roaming\marktext\images\2022-01-26-15-01-41-image.png)

**基础信息：** 用户名，日期。

**❗导入招股书模板：** 在使用【非自己】创建的word文档中使用相关功能，需先点击导入招股书模板。

### 2、文字处理

![](C:\Users\Morgan%20Wan\AppData\Roaming\marktext\images\2022-01-26-15-06-56-image.png)

### 3、数字处理

![](C:\Users\Morgan%20Wan\AppData\Roaming\marktext\images\2022-01-26-15-07-11-image.png)

#### 千分符效果：

![](C:\Users\Morgan%20Wan\AppData\Roaming\marktext\images\2022-01-26-15-23-49-image.png)

### 4、表格处理

![](C:\Users\Morgan%20Wan\AppData\Roaming\marktext\images\2022-01-26-15-07-28-image.png)

1. 调整表格样式、字体、行高

2. 并自动去除文档中的空格，为避免删除英文名称之间的间距，仅删除文本前后的空格。

3. 首行居中（标题栏居中）

4. 首列文本居左，未行首列单元格居中（合计所在单元格）

5. 其余内容如为数字自动居右，否则居左

#### 表格样式效果：

**表格样式一：**

![](C:\Users\Morgan%20Wan\AppData\Roaming\marktext\images\2022-01-26-15-08-00-image.png)

**表格样式二：**

![](C:\Users\Morgan%20Wan\AppData\Roaming\marktext\images\2022-01-26-15-08-27-image.png)

### 5、段落设置

![](C:\Users\Morgan%20Wan\AppData\Roaming\marktext\images\2022-01-26-15-26-27-image.png)

根据招股书样式设置各级标题：

**样式修改可在【开始标签栏】-【样式】中修改，选择基于Normal.dotm保存**

- **正文样式：**
  
  - 字体：宋体/Times New Roman
  
  - 间距：前后0.2行
  
  - 行距：1.5行
  
  - 大小：小四号

- **节标题：**
  
  - 字体：黒体/Times New Roman
  
  - 间距：前后1行
  
  - 行距：1.5行
  
  - 大小：三号

- **二级标题：**
  
  - 字体：黒体/Times New Roman
  
  - 间距：前后0.2行
  
  - 行距：1.5行
  
  - 大小：四号

- **三级标题：**
  
  - 字体：黒体/Times New Roman
  
  - 间距：前后0.2行
  
  - 行距：1.5行
  
  - 缩进：2字符
  
  - 大小：小四号

- **四级标题：**
  
  - 字体：黒体/Times New Roman
  
  - 间距：前后0.2行
  
  - 行距：1.5行
  
  - 缩进：2字符
  
  - 大小：小四号

- **表格字体：**
  
  - 字体：宋体/Times New Roman
  
  - 间距：前后0行
  
  - 行距：0行
  
  - 大小：五号

- **表格单位：**
  
  - 字体：宋体/Times New Roman
  
  - 间距：前后0行
  
  - 行距：1.5行
  
  - 位置：居右
  
  - 大小：五号

- **表格下备注：**
  
  - 字体：宋体/Times New Roman
  
  - 间距：前后0行
  
  - 行距：1.5行
  
  - 缩进：2字符
  
  - 大小：五号

#### 效果图：

![](C:\Users\Morgan%20Wan\AppData\Roaming\marktext\images\2022-01-26-15-55-31-image.png)

### 6、汇总校验

![](C:\Users\Morgan%20Wan\AppData\Roaming\marktext\images\2022-01-26-15-10-43-image.png)

用于表格数字校验是否正确。

选中行、列或选中区域后，结果会显示在word左下角栏上。

#### 效果演示：

![](C:\Users\Morgan%20Wan\AppData\Roaming\marktext\images\2022-01-26-15-19-50-image.png)

### 7、页面处理

![](C:\Users\Morgan%20Wan\AppData\Roaming\marktext\images\2022-01-26-15-06-36-image.png)

## 8、实验功能

![](C:\Users\Morgan%20Wan\AppData\Roaming\marktext\images\2022-01-26-15-09-02-image.png)

- 复制表格宽度，一般用于同一类型的表格宽度（如三年一期报表）

- 先读取源表格的宽度，再在目标表格中调节宽度

- 源表格和目标表格的行数、列数应当一致

#### 逐列读取/复制

一列列读取/复制源表格的宽度

已知缺点：

- 存在如果存在合并单元格则不能读取

- 如果源表格的列数少于目标表格的列会出现不可知的BUG

#### 逐格读取/复制

一个个单元格读取/复制表格宽度

已知缺点：

- 存在如果存在合并单元格则不能读取

- 如果源表格的列数少于目标表格的列会出现不可知的BUG
