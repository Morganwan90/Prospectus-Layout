@echo off
echo,
echo,
echo �й�˵�����Ű湤��V2 By Pingan.Morgan
echo,
echo �����򽫲�ȡֱ���滻Ĭ��ģ�巽ʽ��װ�����û������Զ�������ʽ��������װ���������Ʋ�����Ƚ��ᱻ����
choice /C YN /N /M "�Ƿ����������Y�����˳����򣨰���N����"
if errorlevel 2 exit
echo ����ִ�г���...
echo =========================================================================
echo ׼�����ݾ�ģ��...
echo,
echo ===============�����ѡ���ļ���Ŀ¼����ѡ���ļ�����F��======================
if exist "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates" ( 
xcopy "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal-old.*" /y/f || goto error1
echo,
echo =========��ģ�屸�ݳɹ�============
echo,
echo ׼����װģ��...
xcopy �й����Ű�*.dotm "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" /y/f && (goto succeed1) || goto error2
) else ( 
echo,
echo Ĭ��ģ���ַƥ��ʧ�ܣ�����ƥ��PA��װ��ģ���ַ...
echo ׼�����ݾ�ģ��...
echo,
echo ===============�����ѡ���ļ���Ŀ¼����ѡ���ļ�����F��======================
if exist "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates" ( 
xcopy "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal-old.*"/y/f || goto error1
echo,
echo =========��ģ�屸�ݳɹ�============
echo,
echo ׼����װģ��...
xcopy �й����Ű�*.dotm "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" /y/f && (goto succeed2) || goto error2
) else ( 
echo,
echo,
echo ����ַ��ȡʧ�ܡ�δ�ɹ���ȡ��ַ�������README�ļ��ֶ��滻
) 
) 

:succeed1
echo,
echo,
echo ����װ�ɹ���Ĭ��ģ���ַ��װ�ɹ�����ַΪ��C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm
pause
exit
:suceed2
echo,
echo,
echo ����װ�ɹ���PA��װ��ģ���ַ��װ�ɹ�����ַΪ��D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm
pause
exit
:error1
echo,
echo,
echo ������ʧ�ܡ�δ�ܱ��ݾ�ģ�壬����ϵͳȨ��
pause
exit
:error2
echo,
echo,
echo ������ʧ�ܡ�δ�ܱ��ݾ�ģ�壬��ر�����word�����ԣ�
pause