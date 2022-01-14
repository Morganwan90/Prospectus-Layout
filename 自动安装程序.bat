@echo off
echo 尝试匹配模板地址...
echo =========================================================================
echo =========================================================================
if exist "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates" ( 
xcopy "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal-old.dotm"/y/f || goto error1
xcopy 招股书排版*.dotm "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm"/y/f && (goto succeed1) || goto error2
) else ( 
echo 默认模板地址匹配失败，尝试匹配PA标装机模板地址...
if exist "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates" ( 
xcopy "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal-old.dotm"/y/f || goto error1
xcopy 招股书排版*.dotm "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" /y/f && (goto succeed2) || goto error2
) else ( 
echo =========================================================================
echo =========================================================================
echo 【地址提取失败】未成功提取地址，请手动替换
) 
) 

:succeed1
echo =========================================================================
echo =========================================================================
echo 【安装成功】默认模板地址安装成功，地址为：C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm
pause
exit
:suceed2
echo =========================================================================
echo =========================================================================
echo 【安装成功】PA标装机模板地址安装成功，地址为：D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm
pause
exit
:error1
echo =========================================================================
echo =========================================================================
echo 【备份失败】未能备份旧模板，请检查系统权限
pause
exit
:error2
echo =========================================================================
echo =========================================================================
echo 【备份失败】未能备份旧模板，请关闭所有word！
pause