@echo off
echo,
echo,
echo 招股说明书排版工具V2 By Pingan.Morgan
echo,
echo 本程序将采取直接替换默认模板方式安装，如用户曾【自定义标题格式】、【安装过其他类似插件】等将会被重置
choice /C YN /N /M "是否继续（按下Y）或退出程序（按下N）？"
if errorlevel 2 exit
echo 继续执行程序...
echo =========================================================================
echo 准备备份旧模板...
echo,
echo ===============如出现选择文件或目录，请选择文件（按F）======================
if exist "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates" ( 
xcopy "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal-old.*" /y/f || goto error1
echo,
echo =========旧模板备份成功============
echo,
echo 准备安装模板...
xcopy 招股书排版*.dotm "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" /y/f && (goto succeed1) || goto error2
) else ( 
echo,
echo 默认模板地址匹配失败，尝试匹配PA标装机模板地址...
echo 准备备份旧模板...
echo,
echo ===============如出现选择文件或目录，请选择文件（按F）======================
if exist "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates" ( 
xcopy "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal-old.*"/y/f || goto error1
echo,
echo =========旧模板备份成功============
echo,
echo 准备安装模板...
xcopy 招股书排版*.dotm "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" /y/f && (goto succeed2) || goto error2
) else ( 
echo,
echo,
echo 【地址提取失败】未成功提取地址，请参照README文件手动替换
) 
) 

:succeed1
echo,
echo,
echo 【安装成功】默认模板地址安装成功，地址为：C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm
pause
exit
:suceed2
echo,
echo,
echo 【安装成功】PA标装机模板地址安装成功，地址为：D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm
pause
exit
:error1
echo,
echo,
echo 【备份失败】未能备份旧模板，请检查系统权限
pause
exit
:error2
echo,
echo,
echo 【备份失败】未能备份旧模板，请关闭所有word后重试！
pause