# 跳过info文档的生成
# 创建一个空的、永远返回成功的 makeinfo 脚本
echo -e '#!/bin/sh\nexit 0' > /tmp/makeinfo
chmod +x /tmp/makeinfo
# 将它加入你的环境变量 PATH 的最前面
export PATH=/tmp:$PATH

timestamp=`date +'%Y%m%d_%H%M%S'`
sh ./demo-i686.sh 2>&1 | tee build_i686_${timestamp}.log