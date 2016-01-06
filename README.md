# bitbake_helloworld
感谢老秦提供的参考资料：http://hambedded.org/blog/2012/11/24/from-bitbake-hello-world-to-an-image/

1. 2016-01-05 运行 bitbake firstrecipe -vDD 后提示ERROR: Nothing PROVIDES 'firstrecipe' 

2. 2016-01-06 根据MikeQin提供建议增加 PV 和 PN 的定义，错误解决
