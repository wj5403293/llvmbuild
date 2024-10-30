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
git add . 添加所有修改和新增的文件
git add example.txt  添加指定文件

上面命令是提交到暂缓区
git commit -m "llvm"  llvm是提交说明
git config --global --add safe.directory 路径

关联远程仓库
git remote add github 仓库ssh地址
git remote -v  命令查看当前已设置的远程仓库及其别名，以及对应的推送和拉取地址
git remote rename 别名 新别名
git remote remove github  命令先把“github”这个别名对应的远程仓库设置给删除掉
git push github main
github名称可以随意 main是分支

git restore . 还原所有在工作区有修改的文件到上一次提交时的状态：
git restore example.txt  还原指定文件
plaintext
  
git restore.