#!/bin/bash
#
#---------------------------------------------+
#学习笔记 for Linux命令行与shell脚本编程大全.第3版  |
#---------------------------------------------+
#记录者：李谦                                   |
#---------------------------------------------+
#日期:2020.5.12，18:04                         |
#---------------------------------------------+
#Email:59661391@qq.com                        |
#---------------------------------------------+
#Good start                                   |
#---------------------------------------------+
#
################################下面演示多行注释###############################
:<<!
echo "注释"
echo '里面是多行注释'

echo -e "\033[30m 黑色字 \033[0m"
echo -e "\033[31m 红色字 \033[0m"
echo -e "\033[32m 绿色字 \033[0m"
echo -e "\033[33m 黄色字 \033[0m"
echo -e "\033[34m 蓝色字 \033[0m"
echo -e "\033[35m 紫色字 \033[0m"
echo -e "\033[36m 天蓝字 \033[0m"
echo -e "\033[37m 白色字 \033[0m"
echo ''
echo -e "\033[40;37m 黑底白字 \033[0m"
echo -e "\033[41;37m 红底白字 \033[0m"
echo -e "\033[42;37m 绿底白字 \033[0m"
echo -e "\033[43;37m 黄底白字 \033[0m"
echo -e "\033[44;37m 蓝底白字 \033[0m"
echo -e "\033[45;37m 紫底白字 \033[0m"
echo -e "\033[46;37m 天蓝底白字 \033[0m"
echo -e "\033[47;30m 白底黑字 \033[0m"
控制选项说明 ：
\33[0m 关闭所有属性
\33[1m 设置高亮度
\33[4m 下划线
\33[5m 闪烁   栗子： echo -e "\033[5m Hello World! \033[0m"
\33[7m 反显
\33[8m 消隐
\33[30m -- \33[37m 设置前景色
\33[40m -- \33[47m 设置背景色
\33[nA 光标上移n行
\33[nB 光标下移n行
\33[nC 光标右移n行
\33[nD 光标左移n行
\33[y;xH设置光标位置
\33[2J 清屏
\33[K 清除从光标到行尾的内容
\33[s 保存光标位置
\33[u 恢复光标位置
\33[?25l 隐藏光标
\33[?25h 显示光标
在这里，我们一起成长
!
################################多行注释END##################################
echo -e "\033[36m                       This's a good start! \033[0m"
echo -e "\033[32m
+--------------+-----+--------------------+------+--------------+
| Study Notes  | For | Linux Command Line | And  | Shell Script |
|--------------+-----+--------------------+------+--------------|
|--------------------+-----------------------+------------------|
| Self-learner:LeeQx | Email:59661391@qq.com |  Date:2020.5.13  |
|--------------------+-----------------------+------------------|
|---------------------------------------------------------------|
| You have to believe in yourself. That's the secret of success.|
+---------------------------------------------------------------+
人必须相信自己,这是成功的秘诀.(卓别林.C.)
\033[0m"
sleep 2
echo -e "\033[44;37m Hello World! \033[0m"
sleep 1
echo ""
echo -e "\033[31m -------------------------初识Linux shell-------------------------- \033[0m"
sleep 1
echo ""
echo -e "\033[36m Linux可划分为以下四部分：\033[0m"
sleep 1
echo -e "\033[36m
                 Linux内核
                 GNU工具
                 图形化桌面环境
                 应用软件
         \033[0m"
sleep 1
echo -e "\033[33m 每一部分在Linux系统中各司其职,但就单个部分而言,其作用并不大. \033[0m"
echo ""
sleep 1
echo -e "\033[36m 图1-1 展示了各部分是如何协作起来构成整个Linux系统的 \033[0m"
sleep 1
echo -e "\033[36m
      +-------------------------------------+
      |       Application software          |->应用软件
      +-------------------------------------+
      +    ↕      ↕      ↕      ↕      ↕    +
      +-------------------------------------+
      |  Window management software         |->窗口管理软件,包括图形界面GUI和命令行界面CLI(需要确认,自学者注!)
      |                    +----------------+
      |GUI:                |  ↕  ↕  ↕  ↕  ↕
      |Graphical           | +--------------+
      |User                | |              |
      |Interface           | |  GNU tools   |->GNU系统工具链(各种系统命令工具)
      |CLI:command-line    | |              |
      |    interface       | |              |
      +--------------------+ +--------------+
      +    ↕      ↕      ↕      ↕      ↕    +
      +-------------------------------------+
      |            Linux kernel             |->Linux 内核
      +-------------------------------------+
      +    ↕      ↕      ↕      ↕      ↕    +
      +-------------------------------------+
      |          computer hardware          |->计算机硬件
      +-------------------------------------+
                   图1-1 Linux系统
        \033[0m"
sleep 1
echo -e "\033[31m -------------------------深入Linux kernel-------------------------- \033[0m"
sleep 1
echo -e "\033[33m
      Linux系统的核心是内核。
      内核控制着计算机系统上的所有硬件和软件，
      在必要时分配硬件，
      并根据需要执行软件。
         \033[0m"
sleep 1
echo -e "\033[33m Linus Torvalds(林纳斯·托瓦兹)还在赫尔辛基大学上学时就开发了第一版Linux内核。\033[0m"
sleep 1
echo -e "\033[36m
      内核主要负责以下四种功能：
             -> 系统内存管理
             -> 软件程序管理
             -> 硬件设备管理
             -> 文件系统管理
         \033[0m"