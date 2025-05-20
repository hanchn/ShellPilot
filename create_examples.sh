#!/bin/bash

# 自动解析README.md并创建相应的目录和文件
# 如果文件已存在则跳过

# 基础路径
BASE_DIR="./examples"
README_FILE="./README.md"

# 确保基础目录存在
mkdir -p "$BASE_DIR"

# 检查README.md文件是否存在
if [ ! -f "$README_FILE" ]; then
  echo "错误：README.md文件不存在！"
  exit 1
fi

# 提取所有链接和标题
echo "正在解析README.md文件..."
links=$(grep -o '\[.*\](./examples/[0-9]*/README.md)' "$README_FILE")

# 处理每个链接
for link in $links; do
  # 提取路径和标题
  path=$(echo "$link" | grep -o './examples/[0-9]*/README.md')
  title=$(echo "$link" | grep -o '\[.*\]' | sed 's/\[\(.*\)\]/\1/')
  
  # 提取目录路径
  dir_path=$(dirname "$path")
  
  # 如果目录不存在，创建目录
  if [ ! -d "$dir_path" ]; then
    echo "创建目录: $dir_path"
    mkdir -p "$dir_path"
  else
    echo "目录已存在，跳过: $dir_path"
  fi
  
  # 如果README文件不存在，创建README文件
  if [ ! -f "$path" ]; then
    echo "创建文件: $path"
    
    # 创建README内容
    echo "# ${title}" > "$path"
    echo "" >> "$path"
    echo "## 场景描述" >> "$path"
    echo "" >> "$path"
    echo "待补充..." >> "$path"
    echo "" >> "$path"
    echo "## 知识点" >> "$path"
    echo "" >> "$path"
    echo "待补充..." >> "$path"
    echo "" >> "$path"
    echo "## 示例代码" >> "$path"
    echo "" >> "$path"
    echo "```bash" >> "$path"
    echo "# 待补充Shell示例" >> "$path"
    echo "```" >> "$path"
    echo "" >> "$path"
    echo "## 执行结果" >> "$path"
    echo "" >> "$path"
    echo "待补充..." >> "$path"
    echo "" >> "$path"
    echo "## 要点解析" >> "$path"
    echo "" >> "$path"
    echo "待补充..." >> "$path"
  else
    echo "文件已存在，跳过: $path"
  fi
  
  # 创建app.sh文件
  app_sh_path="${dir_path}/app.sh"
  if [ ! -f "$app_sh_path" ]; then
    echo "创建文件: $app_sh_path"
    
    # 创建app.sh内容
    echo "#!/bin/bash" > "$app_sh_path"
    echo "" >> "$app_sh_path"
    echo "# ${title}" >> "$app_sh_path"
    echo "# 作者：ShellPilot" >> "$app_sh_path"
    echo "# 创建日期：$(date '+%Y-%m-%d')" >> "$app_sh_path"
    echo "" >> "$app_sh_path"
    echo "# 设置严格模式" >> "$app_sh_path"
    echo "set -e" >> "$app_sh_path"
    echo "" >> "$app_sh_path"
    echo "# 显示脚本用法" >> "$app_sh_path"
    echo "function usage() {" >> "$app_sh_path"
    echo "  echo \"用法: \$(basename \$0) [参数]\"" >> "$app_sh_path"
    echo "  echo \"描述: ${title}\"" >> "$app_sh_path"
    echo "  echo \"\"" >> "$app_sh_path"
    echo "  echo \"选项:\"" >> "$app_sh_path"
    echo "  echo \"  -h, --help    显示帮助信息\"" >> "$app_sh_path"
    echo "  exit 1" >> "$app_sh_path"
    echo "}" >> "$app_sh_path"
    echo "" >> "$app_sh_path"
    echo "# 主函数" >> "$app_sh_path"
    echo "function main() {" >> "$app_sh_path"
    echo "  echo \"开始执行: ${title}\"" >> "$app_sh_path"
    echo "  # 在这里添加您的代码" >> "$app_sh_path"
    echo "  echo \"执行完成\"" >> "$app_sh_path"
    echo "}" >> "$app_sh_path"
    echo "" >> "$app_sh_path"
    echo "# 解析命令行参数" >> "$app_sh_path"
    echo "while [[ \$# -gt 0 ]]; do" >> "$app_sh_path"
    echo "  case \$1 in" >> "$app_sh_path"
    echo "    -h|--help)" >> "$app_sh_path"
    echo "      usage" >> "$app_sh_path"
    echo "      ;;" >> "$app_sh_path"
    echo "    *)" >> "$app_sh_path"
    echo "      echo \"未知选项: \$1\"" >> "$app_sh_path"
    echo "      usage" >> "$app_sh_path"
    echo "      ;;" >> "$app_sh_path"
    echo "  esac" >> "$app_sh_path"
    echo "  shift" >> "$app_sh_path"
    echo "done" >> "$app_sh_path"
    echo "" >> "$app_sh_path"
    echo "# 调用主函数" >> "$app_sh_path"
    echo "main" >> "$app_sh_path"
    
    # 设置执行权限
    chmod +x "$app_sh_path"
  else
    echo "文件已存在，跳过: $app_sh_path"
  fi
done

echo "所有示例目录和文件创建完成！"