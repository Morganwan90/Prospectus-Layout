@echo off
echo ����ƥ��ģ���ַ...
echo =========================================================================
echo =========================================================================
if exist "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates" ( 
xcopy "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal-old.dotm"/y/f || goto error1
xcopy �й����Ű�*.dotm "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm"/y/f && (goto succeed1) || goto error2
) else ( 
echo Ĭ��ģ���ַƥ��ʧ�ܣ�����ƥ��PA��װ��ģ���ַ...
if exist "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates" ( 
xcopy "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal-old.dotm"/y/f || goto error1
xcopy �й����Ű�*.dotm "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" /y/f && (goto succeed2) || goto error2
) else ( 
echo =========================================================================
echo =========================================================================
echo ����ַ��ȡʧ�ܡ�δ�ɹ���ȡ��ַ�����ֶ��滻
) 
) 

:succeed1
echo =========================================================================
echo =========================================================================
echo ����װ�ɹ���Ĭ��ģ���ַ��װ�ɹ�����ַΪ��C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm
pause
exit
:suceed2
echo =========================================================================
echo =========================================================================
echo ����װ�ɹ���PA��װ��ģ���ַ��װ�ɹ�����ַΪ��D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm
pause
exit
:error1
echo =========================================================================
echo =========================================================================
echo ������ʧ�ܡ�δ�ܱ��ݾ�ģ�壬����ϵͳȨ��
pause
exit
:error2
echo =========================================================================
echo =========================================================================
echo ������ʧ�ܡ�δ�ܱ��ݾ�ģ�壬��ر�����word��
pause