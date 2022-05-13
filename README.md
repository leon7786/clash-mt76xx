#K1/K2、K2P跑Clash性能
试过K1 64MRAM稳定几天不重启 

2.6MB预编译文件启动消耗10MB左右RAM

K1/K2 油管峰值1.1w

K2P Padavan双核MT76XX 油管峰值2.8w


操作说明：
整个clash文件夹放进去/tmp里
(可用xshell+自带的tftp)

#ssh操作
#添加文件执行权限
chmod+x *

#修改config.yaml配置文件

里面预设了6个服务器位置。改成你的节点信息(保持6个不增不减，因为clash模板固定为1-6)

（支持SOCKS HTTP SS V2RAY TROJAN,参考clash模板）

保存退出后

#ssh执行启动脚本
sh /tmp/clash/shart.sh

过4秒后，路由器科学富强完成；打开谷歌测试

浏览器访问下面切换节点
http://192.168.2.1:9999/ui/#/proxies

192.168.2.1 改成你的ip

start.sh脚本原理

#把53端口转发给clash的dns服务器
dns上游连接海外dns服务器抗污染

绕过中国IP端口，之后只代理80 443端口


ps：支持放在U盘，改一下start.sh（搜tmp字段修改）
集成进去16MB固件毫无压力。后期看能不能集成进去8M ROM
