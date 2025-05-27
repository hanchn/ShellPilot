在 **Shell** 中，`cat` 是 **concatenate**（连接、串联）的缩写，是 Linux/Unix 系统里最常用的文件内容查看与处理命令之一。

---

### `cat` 的基本作用

* **查看文件内容**
  直接在终端输出文件的全部内容。
* **合并文件**
  可以把多个文件的内容合并输出（或者写入新文件）。
* **创建新文件**
  通过重定向符号 `>` 可以新建文件并写入内容。

---

### 常用用法示例

#### 1. 查看文件内容

```bash
cat filename.txt
```

**效果：**
把 `filename.txt` 里的内容全部显示在屏幕上。

#### 2. 合并多个文件

```bash
cat file1.txt file2.txt > merged.txt
```

**效果：**
把 `file1.txt` 和 `file2.txt` 的内容合并到新文件 `merged.txt` 里。

#### 3. 创建新文件并输入内容（按 Ctrl+D 结束）

```bash
cat > newfile.txt
# 输入内容
# 按 Ctrl+D 保存并退出
```

#### 4. 显示带行号的文件内容

```bash
cat -n filename.txt
```

**效果：**
显示内容的同时，每行前面会有行号。

---

### 经典实际场景

* 快速预览小文件内容
* 批量合并日志文件
* 脚本中处理配置文本

---

如果你要配合代码讲解录视频，这段可以用口播方式介绍，下面加个简单注释实例（分开展示）：

```bash
# 查看文件内容
cat /etc/hosts

# 合并两个文件
cat part1.txt part2.txt > all.txt

# 显示内容并加行号
cat -n demo.txt
```

---
