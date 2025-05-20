# 查看当前目录下的文件和文件夹
ls -al
# -a 显示隐藏文件，-l 显示详细信息（权限、大小、时间等）

# 查看一个文件的内容
cat /etc/hosts
# 适合快速查看内容较小的配置文件

# 在文件中查找包含关键字的行
grep "127.0.0.1" /etc/hosts
# 查找所有包含 127.0.0.1 的行，默认高亮显示关键词

# 查找关键词并显示行号
grep -n "error" ./app.log
# 查找 error 出现在哪几行，-n 表示输出行号

# 提取文本的某一列（例如日志中的访问 IP）
cat access.log | awk '{print $1}'
# awk 默认以空格为分隔符，$1 表示第一列

# 提取指定列并计算出现次数（例如 PV/UV 分析）
cat access.log | awk '{print $1}' | sort | uniq -c | sort -nr
# 查看出现最多的 IP 地址（日志分析经典套路）

# 批量替换文件中的关键词（例如配置替换）
sed -i 's/localhost/127.0.0.1/g' config.yaml
# 将 config.yaml 文件中的 localhost 全部替换为 127.0.0.1

# 查找当前目录及子目录中所有 .log 文件
find . -type f -name "*.log"
# -type f 表示查找文件，-name 指定文件名规则（支持通配符）

# 删除 7 天前的 .log 文件（自动清理脚本常用）
find ./logs -name "*.log" -mtime +7 -exec rm -f {} \;
# -mtime +7 表示 7 天以前，-exec 后接处理动作

# 将 find 的结果传递给其他命令执行（批量删除）
find . -name "*.tmp" | xargs rm -f
# xargs 将 find 找到的文件一个一个传递给 rm 命令

# 将多个关键词批量 grep（多个文件）
cat access.log error.log | grep -E "error|failed|timeout"
# -E 表示支持正则表达式，多个关键字用 | 分隔
