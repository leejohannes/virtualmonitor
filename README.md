# [virtualmonitor](https://iheld.net/?post=149)
Vitual Monitor
把下载的代码解压缩%ProgramFiles%\virtualmonitor
把里面的快捷方式复制到桌面就可以根据文字提示添加删除虚拟显示了

发现在部分台式机上如果只有一个虚拟显示器，直接删除会导致不显示，所以当只有一个虚拟显示器的时候不要直接删除，如果误删除请按3然后回车。。。实在要删除就直接连带驱动删了
---

---

添加了自动启动的bat
1. 在 windows 自动的*任务计划程序* 中添加任务，随便啥名字
2. 创建任务--“不管”，“不存”，“使用”
3. 触发器--把“按预定计划”改成“启动时”
4. 操作--输入 %ProgramFiles%\VirtualMonitor\autoadd1.bat--确定保存就可以了

---

English Ver.
1. 	unzip and copy VirtualMonitor folder to %ProgramFiles%
2. 	copy out VirtualMonitor_en or VirtualMonitor_cn to desktop, or anyplace
	double click one it, run as administrator
3.	input 1 in cmd, for 1st time use
-------------------------------------------------------------------------------
***
in System -- Display set your screen
***

!!!
for remove virtual monitor
if only got one virtual monittor, choose 2 stop driver,
do not directcly choose 4 remove that one
it may cause black screen since all monitor removed, 
need press 3 add back, remote cannot
!!!
===============================================================================
Auto start
1. search and open Task Scheduler--Create Task
2. Give any name you may wanna,
3. choose "Run whether..." click on "Do not store password..." and "Run with highest..."
4. Trigger--new--change "On a schedule" to "At startup"--press OK
5. Action--new--Browser, select %ProgramFiles%\VirtualMonitor\autoadd1.bat
