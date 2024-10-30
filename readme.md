ssh密钥进行github身份认证
首先打开终端输入
ssh-keygen  

生成ssh密钥，默认值就好
.pub文件就是公钥，然后去github配对ssh的公钥

然后
ssh git  连接测试
ssh -T git@github.com

出现这个则表示ssh配置成功
Hi wj5403293! You've successfully authenticated, but GitHub does not provide shell access.

创建本地仓库
git init

提交本地仓库
git add .    添加所有修改和新增的文件
git add example.txt  添加指定文件

上面命令是提交到暂缓区
git commit -m "llvm"  llvm是提交说明
git config --global --add safe.directory 路径

关联远程仓库
git remote add github 仓库ssh地址
git push github main
github名称可以随意 main是分支