# 🛡️ Web Security & Solution Architecture Lab
![Version](https://img.shields.io/badge/Status-In--Progress-orange)
![Field](https://img.shields.io/badge/Focus-Cybersecurity%20%7C%20Pre--sales-blue)

本项目是一个专注于 **Web 安全攻防实战**与**售前解决方案**的深度学习仓库。通过模拟真实靶场环境（如 DVWA），将底层的技术注入原理转化为可交付的业务安全方案。

---

## 🗺️ 学习规划与路线图 (Roadmap)

本仓库按漏洞类型划分为多个专项实验室，每个模块均包含：**源码审计**、**Payload 实战**、**业务影响分析**及**售前修复建议**。

### 1. [SQL Injection (SQL 注入)](./SQL-Injection/) 
> **当前状态：已完成 ✅**
- **核心重点**：数字型/字符串型注入、Hex 编码绕过、Collation 冲突解决。
- **产出**：完整实战报告 PDF、Payload 脚本库。

### 2. [XSS (跨站脚本攻击)](./XSS/) 
> **当前状态：计划中 ⏳**
- **核心重点**：反射型、存储型与 DOM 型的差异及危害。
- **业务场景**：窃取 Cookie 导致账户接管、前端页面篡改。
- **售前视角**：如何向客户解释 CSP (内容安全策略) 与输入净化。

### 3. [CSRF (跨站请求伪造)](./CSRF/) 
> **当前状态：计划中 ⏳**
- **核心重点**：利用用户身份执行非预期操作。
- **业务场景**：非法资金转账、后台配置修改。
- **售前视角**：Token 机制与 SameSite 属性的必要性。

### 4. [Case Study (行业案例研究)](./Case-Study/)
> **当前状态：构建中 🏗️**
- **核心重点**：将实验室技术映射到真实业务环境（如：毕业设计、电商、OA系统）。
- **目标**：练习如何向非技术背景客户描述安全风险。

---

## 🛠️ 实验工具栈 (Toolbox)
- **Web 环境**: phpStudy (WAMP)
- **分析工具**: Burp Suite, Browser DevTools
- **文档管理**: Markdown + PDF (Professional Layout)

---

## 🛡️ 免责声明
本项目所有技术内容仅供合法安全研究与售前方案演练，严禁用于任何未经授权的非法测试。
