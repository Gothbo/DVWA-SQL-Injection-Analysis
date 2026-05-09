# 网络安全售前工程师实战手册

> 一套从入门到面试的完整售前安全工程师学习资料，基于真实场景和方法论沉淀。

---

## 快速导航

| 你想了解 | 直接跳转 |
|----------|---------|
| 我是新手，怎么系统学习？ | [三十天速成计划](Case-Study/Learning-materials/三十天计划.md) |
| 想直接看案例 | [案例集合](#案例学习) |
| 想找方法论 | [方法论速查](#方法论) |
| 准备面试 | [面试题库](Case-Study/Learning-materials/售前安全工程师面试题库.pdf) |
| 想练Web安全实战 | [Web安全基础](#web安全基础dvwa实战) |

### 使用指南

建议按以下顺序阅读：

1. **先看方法论** → [四维追问框架](Case-Study/Learning-materials/四维追问框架.md)（5分钟，建立售前沟通的基本逻辑）
2. **再看2个代表案例** → [制造业工控安全](Case-Study/examples/Safety-protection-of-industrial-control-system.md) + [医疗防勒索](Case-Study/examples/Core-system-security-of-tertial-hospitals.md)（10分钟，感受实际场景）
3. **回看基础知识** → [B端企业安全需求与法规体系指南](Case-Study/Learning-materials/B%20端企业安全需求与法规体系指南.md)（30分钟，打底）
4. **最后练面试** → [面试题库](Case-Study/Learning-materials/售前安全工程师面试题库.pdf) + 各案例的「可复用的面试话术」

时间有限的话，跳过第3步直接练面试话术也可以。

---

## 这是什么

这是一个为**网络安全售前工程师**设计的实战学习手册，内容涵盖：

- **基础知识**：法规合规指南、安全产品、云安全架构、Web漏洞实战(XSS/SQL注入/CSRF)
- **方法论**：客户询问技巧、方案匹配逻辑、案例引用方法
- **案例学习**：覆盖零售、教育、金融、医疗、政府、制造6大行业
- **行业产品映射**：金融/制造/医疗/政务4大行业的产品映射指南
- **面试准备**：题库 + 实战练习

**核心理念**：售前不是卖产品清单，而是帮客户理清问题，再给对应的解法。

> **全部内容均为本人独立整理创作** — 从行业案例的方法论沉淀、
> 到Web安全技术的实战演示、再到产品与场景的映射分析，
> 全部基于公开资料和个人实践经验编写。
> 每个案例的「我的思考」部分展示了我对行业需求的复盘和推演过程。

---

## 关于我

我是**浩然**，正在准备网络安全售前工程师岗位。

这个仓库不是面试作品集，而是我**系统化学习售前能力的完整记录**。

**我认为一个好的售前工程师需要三种能力：**
1. **听懂客户** → 四维追问框架、场景化询问节奏（方法论）
2. **讲清方案** → 7个跨行业案例，每个都有痛点→推演→方案→话术（案例）
3. **懂点技术** → XSS/SQL注入/CSRF实战，能跟客户技术团队对话（Web基础）

**如果你是面试官，建议优先看：**
- [制造行业案例](Case-Study/examples/Safety-protection-of-industrial-control-system.md) — IT/OT融合场景，最能体现跨域理解力
- [医疗行业案例](Case-Study/examples/Core-system-security-of-tertial-hospitals.md) — 合规+业务连续性双驱动，售前典型打法
- [四维追问框架](Case-Study/Learning-materials/四维追问框架.md) — 我自己总结的售前追问方法论

---

## 案例学习

### 已完成案例（7个）

| 行业 | 案例名称 | 核心问题 | 方案亮点 |
|------|---------|---------|---------|
| 零售 | [攻击溯源案例](Case-Study/examples/Retail-company-attack%20-attribution.md) | 设备买了但看不清攻击路径 | 三天出溯源报告 |
| 教育 | [API数据泄露案例](Case-Study/examples/Online-education-system.md) | 测试接口没鉴权泄露30万数据 | 先止血再排查 |
| 金融 | [城商行数据合规案例](Case-Study/examples/Bank-data-security-compliance.md) | 监管整改通知，数据分类分级不清 | 合规驱动+总分行一体化 |
| 医疗 | [三甲医院安全案例](Case-Study/examples/Core-system-security-of-tertial-hospitals.md) | 勒索攻击导致挂号中断2小时 | 业务不中断+防勒索 |
| 政府 | [政务云安全升级案例](Case-Study/examples/Security-system-of-government-cloud-plantform.md) | 80个委办局安全水平参差不齐 | 管理平台+排名通报 |
| 制造 | [汽车零部件工控安全案例](Case-Study/examples/Safety-protection-of-industrial-control-system.md) | PLC被篡改，2000件产品报废 | 旁路部署+IT/OT一体化 |
| 连锁 | [美宜佳MSS案例](Case-Study/examples/sangfor-mss-meiyijia.md) | 3万家门店安全运营 | MSS托管式安全服务 |

### 案例模板

所有案例均按统一模板编写，包含：
1. 基础信息
2. 客户背景
3. 痛点分析（表面诉求→深层痛点→技术需求）
4. **我的思考**（痛点推演 → 方案推导过程）
5. 解决方案
6. 量化成果
7. 可复用的面试话术

[案例学习模板](Case-Study/templates/case-study-template.md)

查看案例前建议先读：[Web安全技术与售前场景关联指南](Case-Study/Learning-materials/Web安全技术关联指南.md)

---

## 方法论

### 核心框架

| 框架 | 说明 | 适用场景 |
|------|------|---------|
| [四维追问框架](Case-Study/Learning-materials/四维追问框架.md) | 环境、时间、资产、预算四个维度的追问逻辑 | 所有售前对话 |
| [场景化询问顺序](Case-Study/Learning-materials/场景化询问顺序.md) | 危机/常规/探索三种场景的不同询问节奏 | 根据客户状态灵活调整 |
| [案例引用四法](Case-Study/Learning-materials/案例引用四法.md) | 模糊化、组合用、坦诚查、行业数据 | 讲案例时不编造 |

### 售前五步法

```
1. 痛点翻译 → 2. 共情锚定 → 3. 方案匹配 → 4. 案例举证 → 5. 反问引导
```

---

## 基础知识

### Web安全基础（DVWA实战）

| 漏洞类型 | 核心概念 | 实战文档 | 售前关联 |
|---------|---------|---------|---------|
| **XSS跨站脚本** | 恶意脚本在受害者浏览器执行，窃取Cookie/劫持会话 | [XSS完整指南](XSS/README.md) | WAF规则配置、客户演示环境搭建 |
| ├ 反射型 | URL参数传递，需诱导点击 | [反射型实战](XSS/Reflect-XSS/README.md) | 钓鱼邮件攻击链 |
| ├ 存储型 | Payload永久存入数据库，影响所有用户 | [存储型实战](XSS/STORE-XSS/README.md) | 论坛/评论区风险 |
| └ DOM型 | 纯前端漏洞，不经过服务端，可绕过WAF | [DOM型实战](XSS/DOM-XSS/README.md) | 现代前端框架安全 |
| **SQL注入** | 通过输入参数篡改SQL查询，窃取/篡改数据库 | [SQL注入完整指南](SQL-Injection/README.md) | 数据库审计、WAF防护 |
| └ 绕过技巧 | 十六进制编码、字符序统一 | [payloads.sql](SQL-Injection/payloads.sql) | 高级渗透测试 |
| **CSRF跨站请求伪造** | 诱导用户执行非预期操作（转账/改密） | [CSRF完整指南](CSRF/README.md) | 业务逻辑安全、Token机制 |

**训练环境**：基于DVWA + PHP/MySQL，配合Burp Suite与浏览器开发者工具
**推荐顺序**：反射型XSS → 存储型XSS → DOM型XSS → SQL注入 → CSRF

### 合规与安全产品

| 模块 | 内容 | 适合 |
|------|------|------|
| [合规与法规](Case-Study/Learning-materials/B%20端企业安全需求与法规体系指南.md) | B端企业安全需求全景、一法三条例、等保体系 | 了解"为什么客户要买安全" |
| [安全产品指南](Case-Study/Learning-materials/安全产品指南.md) | 8大核心产品的通俗解释 | 学会"用客户听得懂的话讲产品" |
| [云安全架构](Case-Study/Learning-materials/云安全基础%20+%20架构图学习指南.md) | 云上三大件、云安全产品、架构设计 | 理解"云上和机房的区别" |

### 行业产品映射指南

| 行业 | 内容 | 适合 |
|------|------|------|
| [金融行业](Case-Study/Learning-materials/金融行业安全产品映射手册.md) | 银行安全需求、零信任、数据安全、DevSecOps | 面银行客户前必读 |
| [制造业](Case-Study/Learning-materials/制造业工控系统安全产品映射手册.md) | IT/OT隔离、微隔离、工控协议安全 | 面制造客户前必读 |
| [医疗行业](Case-Study/Learning-materials/医疗行业安全产品映射手册.md) | 医疗攻击面、防勒索、等保三级 | 面医院客户前必读 |
| [政务行业](Case-Study/Learning-materials/政务行业安全产品映射指南.md) | 政务云、等保合规、排名通报战术 | 面政府客户前必读 |

---

## 面试准备

### 题库

- [面试题库（PDF版）](Case-Study/Learning-materials/售前安全工程师面试题库.pdf) — 方便打印和阅读

### 实战练习

1. **案例演练** — 从7个案例中选一个，用面试话术部分练习表达
2. **DVWA环境** — 搭建本地环境演示漏洞效果

### 学习计划

- [三十天速成计划](Case-Study/Learning-materials/三十天计划.md) — 从零到能独立面对客户

---

## 资源收集

不知道从哪里找真实案例？

[案例资源收集指南](Case-Study/Learning-materials/案例学习资源汇总.md)

---

## 项目结构

```
├── README.md                       # 本文件
├── INDEX.md                        # 全局索引
├── XSS/                            # Web安全基础 - XSS跨站脚本
│   ├── README.md
│   ├── Reflect-XSS/                # 反射型XSS实战 + PDF报告
│   ├── STORE-XSS/                  # 存储型XSS实战 + PDF报告
│   └── DOM-XSS/                    # DOM型XSS实战 + PDF报告
├── SQL-Injection/                  # Web安全基础 - SQL注入
│   ├── README.md
│   ├── DVWA-SQL-Injection.pdf
│   └── payloads.sql
├── CSRF/                           # Web安全基础 - CSRF跨站请求伪造
│   ├── README.md
│   └── DVWA CSRF 渗透测试训练报告.pdf
└── Case-Study/                     # 售前案例与学习资料
    ├── Learning-materials/         # 基础知识与方法论
    │   ├── B 端企业安全需求与法规体系指南.md
    │   ├── 安全产品指南.md
    │   ├── 云安全基础 + 架构图学习指南.md
    │   ├── 金融/制造业/医疗/政务行业安全产品映射手册.md
    │   ├── 三十天计划.md
    │   ├── 案例学习资源汇总.md
    │   ├── Web安全技术关联指南.md
    │   ├── 四维追问框架.md
    │   ├── 场景化询问顺序.md
    │   ├── 案例引用四法.md
    │   └── 售前安全工程师面试题库.pdf
    ├── examples/                   # 行业案例（7个）
    │   ├── Retail-company-attack-attribution.md
    │   ├── Online-education-system.md
    │   ├── Bank-data-security-compliance.md
    │   ├── Core-system-security-of-tertial-hospitals.md
    │   ├── Safety-protection-of-industrial-control-system.md
    │   ├── Security-system-of-government-cloud-plantform.md
    │   └── sangfor-mss-meiyijia.md
    └── templates/                  # 案例模板
        └── case-study-template.md
```

---

## 学习路线图

```
第1步：打基础
  ├─ 读《B端企业安全需求与法规体系指南》→ 理解客户为什么要买安全
  ├─ 读《安全产品指南》→ 学会通俗讲产品
  ├─ 读《云安全基础 + 架构图学习指南》→ 理解云和机房的区别
  └─ 练DVWA实战 → XSS/SQL注入/CSRF漏洞原理与防御

第2步：学方法
  ├─ 读《四维追问框架》→ 学会问对问题
  ├─ 读《场景化询问顺序》→ 学会灵活调整
  └─ 读《案例引用四法》→ 学会讲好案例

第3步：看案例
  ├─ 精读2-3个同行业案例
  ├─ 练习面试话术部分
  └─ 记录自己的思考

第4步：练实战
  ├─ 搭建DVWA环境演示给客户看
  ├─ 模拟面试场景
  └─ 反复打磨表达方式

第5步：去面试
  ├─ 刷面试题库
  ├─ 准备1-2个拿手案例
  └─ 自信上场
```

---

## 版本信息

| 版本 | 日期 | 更新内容 |
|------|------|---------|
| v0.3 | 2026-05 | 新增4大行业产品映射指南（金融/制造/医疗/政务），完善基础知识体系 |
| v0.2 | 2026-05 | 新增Web安全基础模块(XSS/SQL注入/CSRF)，统一文件名，修正全部链接 |

---

> 本项目持续更新中，欢迎通过 GitHub Issues 提交建议或贡献案例。
