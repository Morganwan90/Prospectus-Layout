@echo off
echo ����ƥ��ģ���ַ...
if exist "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates" ( 
xcopy "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal-old.dotm"/y/f
xcopy �й����Ű�*.dotm "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm"/y/f
echo ��ƥ������Ĭ��ģ���ַƥ��ɹ�����ַΪ��C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm
echo �������ѳ����滻Ĭ��ģ���ļ������ļ�����ΪNormal-old.dotm
echo ��ע�⡿����ʾ�������ͻ������ر�����word�ٴγ����Զ��滻����
) else ( 
echo Ĭ��ģ���ַƥ��ʧ�ܣ�����ƥ��PA��װ��ģ���ַ...
if exist "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates" ( 
xcopy "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal-old.dotm"/y/f
xcopy �й����Ű�*.dotm "D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm" /y/f
echo ��ƥ������PA��װ��ģ���ַƥ��ɹ�����ַΪ��D:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Normal.dotm
echo �������ѳ����滻PA��װ��ģ���ļ������ļ�����ΪNormal-old.dotm
echo ��ע�⡿����ʾ�������ͻ������ر�����word�ٴγ����Զ��滻����
) else ( 
echo δ�ɹ���ȡ��ַ�����ֶ��滻
) 
) 
pause