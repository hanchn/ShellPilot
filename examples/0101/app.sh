# 查看当前终端正在使用的 Shell
echo $SHELL
# 输出示例：/bin/bash 或 /bin/zsh

# 查看当前用户默认登录 Shell（更准确）
cat /etc/passwd | grep $USER
# 输出示例：xxx:/bin/bash

# 常见配置文件（不同 Shell 对应不同启动文件）

# bash 的配置文件：推荐设置命令别名、PS1提示符等
cat ~/.bashrc

# zsh 的配置文件：zsh 用户常用 oh-my-zsh 就配置在这里
cat ~/.zshrc

# 创建一个简单的兼容不同 Shell 的脚本模板
#!/bin/bash
# ↑ bash 是最通用的，适用于大多数 Linux/macOS
echo "Hello from Bash"

#!/bin/zsh
# ↑ 如果你在 zsh 环境下开发，可以直接使用
echo "Hello from Zsh"

#!/bin/sh
# ↑ 最大兼容性写法，在老旧系统中也能运行
echo "Hello from SH"

# zsh 的补全能力演示（需安装 oh-my-zsh）
# 在 zsh 终端中输入以下内容后按 Tab 键：
git<tab>
# 你会看到所有 Git 子命令补全提示
