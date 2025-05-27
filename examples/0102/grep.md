### grep 是什么？

`grep` 是 **“global regular expression print”** 的缩写，是 Shell 下查找文本内容最常用的命令之一。
它的核心作用就是在一堆文本里，**查找并筛选出包含指定内容的行**，非常适合日志排查、批量找文件内容、数据过滤等场景。

---

#### 常见用法

##### 1. 在文件中查找关键词

```bash
grep "hello" myfile.txt
```

**效果**：输出 myfile.txt 里所有包含 “hello” 的行。

---

##### 2. 忽略大小写查找（加 -i）

```bash
grep -i "error" server.log
```

**效果**：不区分大小写查找 "error"，“Error”、“ERROR”都能被找到。

---

##### 3. 显示匹配行的行号（加 -n）

```bash
grep -n "root" /etc/passwd
```

**效果**：显示每一行包含 "root" 的行，并标出该行为文件第几行。

---

##### 4. 递归查找当前目录下所有文件（加 -r 或 -R）

```bash
grep -r "token" .
```

**效果**：在当前目录及子目录的所有文件中，查找包含 “token” 的行。

---

##### 5. 显示不包含关键词的行（加 -v）

```bash
grep -v "pass" result.txt
```

**效果**：输出 result.txt 中**不包含** "pass" 的行。

---

##### 6. 用正则表达式查找（加 -E 或默认支持简单正则）

```bash
grep -E "fail|error" logs.txt
```

**效果**：查找 logs.txt 中同时包含 “fail” 或 “error” 的行。

---

### 日常场景举例

* 排查日志文件某个报错
  `grep "timeout" app.log`
* 在大量代码中找函数/变量
  `grep "myFunction" *.js`
* 批量过滤敏感词
  `grep -i "password" config/*`

---

### 常用参数总结

| 参数      | 作用         |
| ------- | ---------- |
| -i      | 忽略大小写      |
| -n      | 显示行号       |
| -r/-R   | 递归查找子目录文件  |
| -v      | 取反，显示不包含内容 |
| -E      | 使用扩展正则     |
| --color | 匹配内容加高亮显示  |

---

如果你需要口播稿和实例分开，也可以这样处理：

#### 口播内容（讲解）

> grep 是 Shell 下用来查找文本内容的工具，可以帮我们从大量文本中筛选出需要的那部分。比如查日志、找配置、批量搜索代码里的关键词，都非常方便。grep 支持正则表达式，还能忽略大小写、递归查找子目录。实际用法只要记住“grep 关键词 文件名”，高级一点就加参数，非常实用。

#### 示例代码（配合口播分屏演示）

```bash
# 查找所有包含 error 的日志
grep "error" app.log

# 忽略大小写查找 password
grep -i "password" *.conf

# 查找并显示行号
grep -n "192.168" hosts

# 递归查找整个项目目录
grep -r "apiKey" .

# 查找不包含 debug 的行
grep -v "debug" run.log
```

