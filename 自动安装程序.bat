@echo off
echo 尝试匹配模板地址...
if exist "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates" ( 
xcopy "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal-old.dotm"/y/f
xcopy 招股书排版*.dotm "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm"/y/f
echo 【匹配结果】默认模板地址匹配成功，地址为：C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm
echo 【处理】已尝试替换默认模板文件，旧文件更名为Normal-old.dotm
echo 【注意】如显示“共享冲突”，请关闭所有word再次尝试自动替换程序。
) else ( 
echo 默认模板地址匹配失败，尝试匹配PA标装机模板地址...
if exist "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates" ( 
xcopy "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal-old.dotm"/y/f
xcopy 招股书排版*.dotm "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" /y/f
echo 【匹配结果】PA标装机模板地址匹配成功，地址为：D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm
echo 【处理】已尝试替换PA标装机模板文件，旧文件更名为Normal-old.dotm
echo 【注意】如显示“共享冲突”，请关闭所有word再次尝试自动替换程序。
) else ( 
echo 未成功提取地址，请手动替换
) 
) 
pause
