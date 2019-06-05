#!bin/bash
#功能:该脚本能够批量添加列表中的用户名.
if    [ $# = 0 ];then
      echo "no userlist,please input"
      exit 1
fi
if    [ ! -f $1 ];then
      echo "input file is not exist"
      exit 2
fi
for name in $(cat $1)
do
    useradd -s /sbin/nologin $name
done
