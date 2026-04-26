# 🛡️ DVWA SQL Injection: Full-Level Security Audit & Pre-sales Solution
![Security](https://img.shields.io/badge/Domain-Web--Security-red) 
![Role](https://img.shields.io/badge/Role-Pre--sales%20Engineer-blue)
![Database](https://img.shields.io/badge/Tech-MySQL%20%7C%20PHP-orange)

本项目是一份基于 **DVWA** (Damn Vulnerable Web Application) 的 SQL 注入深度实践记录。文档不仅涵盖了从 **Low** 到 **High** 等级的技术突破方案，更从**售前工程师**的视角出发，结合实际业务场景构建了完整的安全解决方案。

---

## 💼 售前视角：业务风险分析与解决方案 (Pre-sales Insight)

> [!IMPORTANT]
> **“安全不仅是防御技术，更是业务持续增长的底座。”** —— 在数字化转型背景下，SQL 注入不仅仅是技术漏洞，更是对企业信誉与业务连续性的重大威胁。

### 1. 典型业务场景案例：大学生就业管理系统
以“大学生就业管理系统（微信小程序端）”为例，该系统承载着大量学生隐私及企业审核敏感数据：
* **攻击路径**：攻击者利用注入漏洞拖取管理员表，获取账号及哈希加密后的密码。
* **业务影响 (Business Impact)**：
    * **身份篡改与权限溢出**：攻击者通过密码破译以管理员身份登录后台，恶意删除用户简历或篡改企业资质。
    * **业务操纵与信誉丧失**：人为干扰审核流程（如故意屏蔽优质企业），导致平台公信力彻底崩溃，甚至面临合规追责风险。

### 2. 纵深防御解决方案 (Technical Solution)
针对上述高危风险，我们提倡构建 **“主动预防 + 边界防护 + 逻辑强化”** 的多维防御体系：
* **核心层（根治）**：推行 **SQL 预编译系统 (Prepared Statements)**，实现指令与数据彻底分离，确保输入内容无法转化为可执行代码。
* **边界层（清洗）**：部署 **WAF (Web 应用防火墙)** 对恶意流量进行实时筛查与拦截。
* **逻辑层（加固）**：实施统一的错误屏蔽机制，切断攻击者获取数据库底层结构的路径。

---

## 🚀 技术深度实战 (Technical Deep Dive)

本仓库详细记录了三个等级的漏洞分析与绕过过程，展现了对底层原理的深入理解：

### 核心技术亮点：
* **Medium Level 绕过策略**：针对 `mysqli_real_escape_string()` 防御，利用 **十六进制 (Hex) 编码** 成功绕过引号限制。
* **底层排障记录 (Critical)**：实战处理 `Illegal mix of collations` 报错，通过显式声明 `COLLATE` 统一字符序，体现了对 MySQL 字符编码冲突的解决能力。
* **结构化逻辑绕过**：利用 `#` 注释符截断后端硬编码的 `LIMIT 1` 逻辑，突破数据回显限制。

---

## 📁 仓库概览 (Repository Structure)

| 文件 | 描述 |
| :--- | :--- |
| 📄 [**Full_Audit_Report.pdf**](./SQL_Injection_Practice_based_on_DVWA.pdf) | **核心文档**：包含源码审计、实验截图及售前话术总结。 |
| 🔑 [**payloads.sql**](./payloads.sql) | **Payload 库**：结构化整理的实战注入语句，含详细的排障注释。 |

---

## 🛠️ 实验环境 (Environment)

* **Server**: phpStudy (Apache 2.4 + MySQL 5.7)
* **Tools**: Browser DevTools, Burp Suite, HackBar
* **Target**: DVWA v1.10 (Development Version)

---

## 🛡️ 免责声明 (Disclaimer)
本项目所有内容仅供网络安全教学与合法渗透测试研究，严禁用于任何非法用途。
