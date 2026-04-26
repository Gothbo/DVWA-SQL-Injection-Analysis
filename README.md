# DVWA SQL Injection Analysis & Practice

本项目是关于 **DVWA (Damn Vulnerable Web Application)** 靶场中 SQL 注入漏洞的深度实践记录。文档详细分析了从基础手工注入到绕过特定防御函数，以及处理底层数据库编码冲突的高级技巧。

## 🌟 技术亮点 (Technical Highlights)

- **多维度注入判定**：深入探讨了数字型 (Numeric) 与字符串型 (String) 注入的底层差异。
- **编码冲突排障 (Critical)**：记录了利用 `COLLATE` 关键字解决 `Illegal mix of collations` 报错的实战过程，体现了对 MySQL 排序规则的底层理解。
- **防御绕过策略**：演示了在不使用引号的情况下，利用十六进制 (Hex) 编码绕过 `mysqli_real_escape_string` 过滤函数。
- **全等级覆盖**：涵盖 Low、Medium、High 三个等级的完整漏洞链路。

## 🛠️ 实验环境

- **集成环境**: phpStudy (Apache 2.4.39 + MySQL 5.7.26)
- **靶场版本**: DVWA v1.10 (Development)
- **测试工具**: Browser DevTools (F12), HackBar, Burp Suite

## 📂 文件说明

- `SQL_Injection_Practice_based_on_DVWA.pdf`: **核心文档**。包含完整的源码审计、Payload 构造逻辑及实验截图。
- `payloads.sql`: 实验过程中使用的所有核心攻击语句整合。

## 🛡️ 防御对策 (Remediation)

本实践证明，基于黑名单或简单字符过滤的防御极易被绕过。项目最终推荐使用 **预处理语句 (Prepared Statements)** 来实现指令与数据的彻底分离，这是防御 SQL 注入的行业金标准。

```php
// 安全修复示例
$stmt = $pdo->prepare('SELECT first_name FROM users WHERE user_id = :id');
$stmt->execute(['id' => $id]);
