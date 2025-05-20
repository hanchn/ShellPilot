# 🚀 Shell实战教程

## 🧱 第一章：Shell 基础命令与脚本语法回顾（快速扫盲）

1. [Shell 是什么？常用 Shell 对比（bash / zsh / sh）](./examples/0101/README.md)
2. [常见命令基础（ls, cat, grep, awk, sed, find, xargs 等）](./examples/0102/README.md)
3. [Shell 变量、字符串与数组用法](./examples/0103/README.md)
4. [条件判断与流程控制（if / case / for / while）](./examples/0104/README.md)
5. [函数定义与脚本执行方式（source vs bash）](./examples/0105/README.md)

## 📝 第二章：文本处理实战

1. [使用 `grep` 过滤日志中的关键字（如 nginx 404）](./examples/0201/README.md)
2. [使用 `awk` 快速提取字段并计算 PV / UV](./examples/0202/README.md)
3. [使用 `sed` 实现批量替换配置项](./examples/0203/README.md)
4. [实战任务：提取日志中访问最多的 IP，并封禁（fail2ban 原理）](./examples/0204/README.md)

## 🔄 第三章：批处理与自动化操作

1. [批量重命名文件（图片/日志等）](./examples/0301/README.md)
2. [一键清理 `.DS_Store`、`.log`、`~` 文件](./examples/0302/README.md)
3. [自动打包并压缩指定目录（tar + cron）](./examples/0303/README.md)
4. [实战任务：每周自动备份目录并上传到远程服务器](./examples/0304/README.md)

## 🛠️ 第四章：实用脚本项目实战

1. [编写部署型脚本（如 Node.js 项目一键部署）](./examples/0401/README.md)
2. [一键初始化服务器环境（安装 nginx/git/docker）](./examples/0402/README.md)
3. [实战任务：实现一个"代码打包 + 部署 + 重启"的 Shell 脚本](./examples/0403/README.md)

## 📊 第五章：日志分析与系统监控脚本

1. [Shell 监控系统资源（CPU、内存、磁盘）](./examples/0501/README.md)
2. [实时查看某个进程的内存变化并记录日志](./examples/0502/README.md)
3. [使用 Shell 自动发送钉钉告警 / 邮件通知](./examples/0503/README.md)
4. [实战任务：异常负载触发告警 + 日志快照保存](./examples/0504/README.md)

## 🌐 第六章：Shell 与网络通信实战

1. [使用 curl 和 wget 与接口交互（GET / POST）](./examples/0601/README.md)
2. [实战任务：监控某个接口返回内容是否包含错误标识](./examples/0602/README.md)
3. [编写自动化 curl 压力测试工具（配合 ab / wrk）](./examples/0603/README.md)

## ⏱️ 第七章：定时任务与自动执行

1. [Crontab 语法与常见错误](./examples/0701/README.md)
2. [Shell 脚本结合 crontab 做全自动维护任务](./examples/0702/README.md)
3. [实战任务：自动清理 30 天前的临时文件、备份 MySQL、监控服务重启](./examples/0703/README.md)

## 📦 第八章：项目级 Shell 编排（中高级）

1. [组织大型脚本项目的结构与模块化](./examples/0801/README.md)
2. [使用 `.env` 配置文件与外部参数注入](./examples/0802/README.md)
3. [实战任务：构建一个可配置的多服务器部署框架（带日志、回滚、告警）](./examples/0803/README.md)

## 🔧 第九章：运维场景 Shell 实战案例集锦

1. [批量 SSH 登录多个服务器执行命令](./examples/0901/README.md)
2. [多服务器之间同步文件（rsync + expect）](./examples/0902/README.md)
3. [Shell 配合 expect 自动输入密码（处理交互式脚本）](./examples/0903/README.md)
4. [实战任务：快速恢复宕机服务的"自动修复脚本"](./examples/0904/README.md)

## 🏆 第十章：实战项目挑战篇（综合能力测试）

1. [**挑战1**：实现一个"自动采集 + 统计 + 报表生成"的完整脚本系统](./examples/1001/README.md)
2. [**挑战2**：写一个小型 CI/CD 脚本系统（Git 提交后自动构建、部署）](./examples/1002/README.md)
3. [**挑战3**：编写脚本检测 SSL 证书即将过期并发送提醒](./examples/1003/README.md)
4. [**挑战4**：实现一个命令行菜单式管理工具（如 switcher.sh）](./examples/1004/README.md)

## 📦 第十一章：项目级脚本工程化思维

**目标：学会编写可维护、可复用、可配置的 Shell 脚本项目**

1. [项目型脚本结构设计（bin/config/logs 模块化）](./examples/1101/README.md)
2. [加载 `.env` 配置并动态注入参数（支持环境变量/动态替换）](./examples/1102/README.md)
3. [参数校验、日志打印函数、退出码统一处理（exit trap）](./examples/1103/README.md)
4. [通用函数库封装（如颜色输出、错误处理、文件判断等）](./examples/1104/README.md)
5. [实战：写一个"脚本模板仓库初始化器"，创建脚本项目骨架](./examples/1105/README.md)

## 🔁 第十二章：多机自动化任务调度与并发执行

**目标：批量执行、异步执行、并发控制+异常处理**

1. [实战：批量 SSH 登录多台服务器执行命令 + 并发控制 + 超时机制](./examples/1201/README.md)
2. [实战：拉取服务器 CPU/MEM 负载并输出合并报表](./examples/1202/README.md)
3. [实战：批量下载远程文件（断点续传 + 故障重试 + 失败记录）](./examples/1203/README.md)
4. [实战：写一个"远程主机清单"系统，每晚采集 + 存储 + diff 变化点](./examples/1204/README.md)

## 🧪 第十三章：CI/CD 自动化部署系统（非 Jenkins）

**目标：纯 Shell 实现部署编排流程**

1. [Git 仓库变更触发 → 自动打包构建 → scp 分发 → SSH 重启服务](./examples/1301/README.md)
2. [可配置服务：Web/Node.js/Java 项目一键发布（包含停止、备份、部署、回滚）](./examples/1302/README.md)
3. [实战：构建 `deploy.sh` 自动部署工具，支持多环境（dev/stage/prod）](./examples/1303/README.md)
4. [实战：自动回滚机制（记录发布记录、出错回滚上一个版本）](./examples/1304/README.md)

## 📊 第十四章：日志监控+异常告警脚本系统

**目标：分析日志并自动发送告警通知**

1. [实战：tail -F 实时监控某目录所有 nginx 日志 → 检测 5xx 异常并告警](./examples/1401/README.md)
2. [实战：错误频率超过阈值触发钉钉告警（curl API + 报文模板）](./examples/1402/README.md)
3. [实战：脚本自动推送"系统负载日报"到飞书](./examples/1403/README.md)
4. [实战：捕捉 Java 报错栈 Trace 信息并按 IP、用户行为聚类输出](./examples/1404/README.md)

## 🔐 第十五章：生产级安全脚本实战

**目标：自动执行安全加固和巡检脚本**

1. [实战：扫描服务器上异常用户、弱口令、未关闭端口](./examples/1501/README.md)
2. [实战：自动封禁 10 分钟内超过 20 次请求的 IP（iptables+fail2ban脚本复刻）](./examples/1502/README.md)
3. [实战：构建"Shell 安全基线巡检器"，输出明细报告（输出 JSON + 报表）](./examples/1503/README.md)

## ⏱ 第十六章：系统资源 + 服务状态监控体系

**目标：构建轻量资源监控脚本系统（替代Zabbix部分功能）**

1. [实战：内存/CPU/IO/磁盘增长趋势监控 + 报警](./examples/1601/README.md)
2. [实战：检测服务存活（进程/端口/接口返回值）并自动重启](./examples/1602/README.md)
3. [实战：检测 SSL 证书有效期、域名解析异常并告警](./examples/1603/README.md)
4. [实战：全链路打点分析采集脚本（用于接口响应时间链路追踪）](./examples/1604/README.md)

## 🌐 第十七章：Shell 与云服务/接口交互

**目标：构建 BASH + 云接口/API 编排的 DevOps 工具**

1. [使用 curl + jq 与 GitHub/GitLab CI/CD API 交互（自动触发流程、查询状态）](./examples/1701/README.md)
2. [实战：阿里云 ECS 实例状态查询 + 重启脚本（AK/SK 鉴权签名）](./examples/1702/README.md)
3. [实战：写一个自动生成 DNS 记录的脚本（调用 Cloudflare API）](./examples/1703/README.md)

## 🧩 第十八章：复杂数据结构处理与报告生成

**目标：用 Shell 操作 JSON、CSV、INI 结构化数据，并生成报表**

1. [实战：从多个 CSV 报表中提取字段，生成合并总表](./examples/1801/README.md)
2. [实战：解析 JSON 配置并生成多语言站点配置文件](./examples/1802/README.md)
3. [实战：生成服务器健康度图表（输出 markdown/html）](./examples/1803/README.md)
4. [实战：自动汇总服务部署状态并通过邮件/飞书汇报（图文并茂）](./examples/1804/README.md)

## 🧱 第十九章：高级脚本技巧与优化手法

**目标：掌握高级技巧，优化运行效率与健壮性**

1. [trap + set -e + pipefail：错误追踪与崩溃防护](./examples/1901/README.md)
2. [subshell 与 eval 的安全用法](./examples/1902/README.md)
3. [脚本性能 profiling 工具推荐（time、shellcheck、bash -x）](./examples/1903/README.md)
4. [实战：构建通用模板"脚本执行器"，支持 dry-run、并发、计划重试](./examples/1904/README.md)

## 🎯 第二十章：综合实战挑战（真·带项目落地）

**目标：用 Shell 做成一个能落地的工具/系统**

### ✅ 项目实战一：轻量级部署助手 `AutoDeployer`

1. [支持一键部署、代码热更新、出错回滚、运行状态可视化（log 分析）](./examples/2001/README.md)
2. [支持通过 YAML/INI 文件配置多个环境与模块部署策略](./examples/2002/README.md)

### ✅ 项目实战二：运维助手工具箱 `OpsKit`

1. [支持命令行交互式 UI（菜单式选择）](./examples/2003/README.md)
2. [集成多个常用脚本任务（服务检查、网络测速、系统信息、脚本备份、定时任务生成）](./examples/2004/README.md)

