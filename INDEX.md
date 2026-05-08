# 全局索引

> 快速定位你需要的内容，支持按主题、行业、场景多维度查找。

---

## 按主题查找

### 售前技巧

| 关键词 | 相关文件 |
|--------|---------|
| 怎么问客户问题 | [四维追问框架](Case-Study/Learning-materials/四维追问框架.md) |
| 不同客户怎么应对 | [场景化询问顺序](Case-Study/Learning-materials/场景化询问顺序.md) |
| 怎么讲案例不编造 | [案例引用四法](Case-Study/Learning-materials/案例引用四法.md) |
| Web漏洞与售前关联 | [Web安全技术关联指南](Case-Study/Learning-materials/Web安全技术关联指南.md) |

### 基础知识

| 关键词 | 相关文件 |
|--------|---------|
| 法规合规（等保/个保法/数安法） | [合规与法规](Case-Study/Learning-materials/compliance-and-regulations.md) |
| 安全产品通俗解释 | [安全产品指南](Case-Study/Learning-materials/security-products-guide.md) |
| 云安全架构 | [云安全架构](Case-Study/Learning-materials/cloud-security-and-architecture.md) |
| 医疗行业产品映射 | [医疗行业安全产品映射](Case-Study/Learning-materials/Safety%20products%20in%20medical%20industry.md) |
| **XSS跨站脚本** | [XSS完整指南](XSS/README.md) / [反射型](XSS/Reflect-XSS/README.md) / [存储型](XSS/STORE-XSS/README.md) / [DOM型](XSS/DOM-XSS/README.md) |
| **SQL注入** | [SQL注入指南](SQL-Injection/README.md) / [payloads.sql](SQL-Injection/payloads.sql) |
| **CSRF跨站请求伪造** | [CSRF完整指南](CSRF/README.md) |
| DVWA训练环境 | XSS/SQL注入/CSRF三大模块，配合Burp Suite实战 |

### 面试准备

| 关键词 | 相关文件 |
|--------|---------|
| 面试题库 | [面试题库(PDF)](Case-Study/Learning-materials/售前安全工程师面试题库.pdf) |
| 30天学习计划 | [30天速成计划](Case-Study/Learning-materials/30-day-plan.md) |

---

## 按行业查找案例

| 行业 | 案例文件 | 核心场景 |
|------|---------|---------|
| **零售** | [零售公司攻击溯源](Case-Study/examples/Retail-Company-Attack%20-Attribution.md) | 设备买了但看不清攻击路径 |
| **教育** | [在线教育API数据泄露](Case-Study/examples/Online-education-system.md) | 测试接口没鉴权导致数据泄露 |
| **金融** | [城商行数据安全合规](Case-Study/examples/Bank%20data%20security%20compliance.md) | 监管整改+数据分类分级 |
| **医疗** | [三甲医院核心系统安全](Case-Study/examples/Core-system%20security-of-tertial-hospitals.md) | 勒索攻击导致业务中断 |
| **政府** | [政务云平台安全升级](Case-Study/examples/Security%20system%20of%20government%20cloud%20plantform.md) | 多委办局安全水平不均 |
| **制造** | [汽车零部件工控安全](Case-Study/examples/Safety%20protection%20of%20industrial%20control%20system.md) | IT/OT融合，PLC被篡改 |
| **连锁** | [美宜佳MSS案例](Case-Study/examples/sangfor-mss-meiyijia.md) | 3万家门店安全运营 |

---

## 按安全场景查找

| 场景类型 | 相关案例 |
|---------|---------|
| **数据泄露** | [教育API泄露](Case-Study/examples/Online-education-system.md) / [金融数据合规](Case-Study/examples/Bank%20data%20security%20compliance.md) |
| **勒索攻击** | [医疗勒索案例](Case-Study/examples/Core-system%20security-of-tertial-hospitals.md) |
| **攻击溯源** | [零售攻击溯源](Case-Study/examples/Retail-Company-Attack%20-Attribution.md) |
| **合规整改** | [金融合规](Case-Study/examples/Bank%20data%20security%20compliance.md) / [政务云升级](Case-Study/examples/Security%20system%20of%20government%20cloud%20plantform.md) |
| **工控安全** | [制造工控安全](Case-Study/examples/Safety%20protection%20of%20industrial%20control%20system.md) |
| **安全运营** | [美宜佳MSS案例](Case-Study/examples/sangfor-mss-meiyijia.md) |
| **XSS攻击防护** | [XSS完整指南](XSS/README.md) |
| **SQL注入防护** | [SQL注入指南](SQL-Injection/README.md) |
| **CSRF防护** | [CSRF指南](CSRF/README.md) |

---

## 按产品查找

| 产品 | 出现在哪些案例 |
|------|--------------|
| **WAF** | [零售](Case-Study/examples/Retail-Company-Attack%20-Attribution.md) / [教育](Case-Study/examples/Online-education-system.md) / [制造](Case-Study/examples/Safety%20protection%20of%20industrial%20control%20system.md) / [XSS防护](XSS/README.md) / [SQL注入防护](SQL-Injection/README.md) |
| **EDR** | [医疗](Case-Study/examples/Core-system%20security-of-tertial-hospitals.md) |
| **DLP** | [教育](Case-Study/examples/Online-education-system.md) / [金融](Case-Study/examples/Bank%20data%20security%20compliance.md) |
| **XDR+SIP** | [零售](Case-Study/examples/Retail-Company-Attack%20-Attribution.md) / [教育](Case-Study/examples/Online-education-system.md) |
| **MSS** | [教育](Case-Study/examples/Online-education-system.md) / [金融](Case-Study/examples/Bank%20data%20security%20compliance.md) / [制造](Case-Study/examples/Safety%20protection%20of%20industrial%20control%20system.md) / [美宜佳](Case-Study/examples/sangfor-mss-meiyijia.md) |
| **数据库审计** | [金融](Case-Study/examples/Bank%20data%20security%20compliance.md) / [SQL注入防护](SQL-Injection/README.md) |
| **堡垒机** | [安全产品指南](Case-Study/Learning-materials/security-products-guide.md) |

---

## 按面试话术查找

如果你想练习某个行业/场景的面试表达：

| 话术场景 | 跳转 |
|---------|------|
| "你在零售行业有什么经验？" | [零售案例](Case-Study/examples/Retail-Company-Attack%20-Attribution.md) |
| "你在教育行业有什么经验？" | [教育案例](Case-Study/examples/Online-education-system.md) |
| "你在金融行业有什么经验？" | [金融案例](Case-Study/examples/Bank%20data%20security%20compliance.md) |
| "你在医疗行业有什么经验？" | [医疗案例](Case-Study/examples/Core-system%20security-of-tertial-hospitals.md) |
| "你在政府行业有什么经验？" | [政府案例](Case-Study/examples/Security%20system%20of%20government%20cloud%20plantform.md) |
| "你在制造行业有什么经验？" | [制造案例](Case-Study/examples/Safety%20protection%20of%20industrial%20control%20system.md) |
| "你懂Web安全吗？" | [XSS](XSS/README.md) / [SQL注入](SQL-Injection/README.md) / [CSRF](CSRF/README.md) |

---

## 按学习阶段查找

### 新手入门（第1-7天）

| 学习内容 | 文件 |
|---------|------|
| 了解行业法规 | [合规与法规](Case-Study/Learning-materials/compliance-and-regulations.md) |
| 学会通俗讲产品 | [安全产品指南](Case-Study/Learning-materials/security-products-guide.md) |
| 理解云和机房 | [云安全架构](Case-Study/Learning-materials/cloud-security-and-architecture.md) |
| 练习XSS/SQL注入/CSRF | [XSS](XSS/README.md) / [SQL注入](SQL-Injection/README.md) / [CSRF](CSRF/README.md) |

### 方法学习（第8-14天）

| 学习内容 | 文件 |
|---------|------|
| 学会问对问题 | [四维追问框架](Case-Study/Learning-materials/四维追问框架.md) |
| 学会灵活应对 | [场景化询问顺序](Case-Study/Learning-materials/场景化询问顺序.md) |
| 学会讲案例 | [案例引用四法](Case-Study/Learning-materials/案例引用四法.md) |

### 案例精读（第15-21天）

| 学习内容 | 文件 |
|---------|------|
| 精读2-3个案例 | 从[案例集合](#按行业查找案例)中选择 |
| 练习面试话术 | 各案例的面试话术部分 |

### 实战练习（第22-30天）

| 学习内容 | 文件 |
|---------|------|
| 搭建DVWA环境 | [XSS训练](XSS/README.md) |
| 刷面试题库 | [面试题库](Case-Study/Learning-materials/售前安全工程师面试题库.pdf) |

---

## 快捷搜索关键词

复制以下关键词到编辑器搜索功能（Ctrl+F / Cmd+F）快速定位：

| 想找 | 搜索关键词 |
|------|-----------|
| 怎么问客户 | `追问` / `反问` / `询问` |
| 怎么讲方案 | `方案匹配` / `解决方案` |
| 案例 | `案例` / `客户反馈` |
| 面试 | `面试话术` / `面试题库` |
| 产品 | `WAF` / `EDR` / `DLP` / `XDR` / `MSS` / `SIEM` |
| 合规 | `等保` / `个保法` / `数安法` / `TISAX` |
| 行业 | `零售` / `教育` / `金融` / `医疗` / `政府` / `制造` |
| Web漏洞 | `XSS` / `SQL注入` / `CSRF` / `DVWA` / `htmlspecialchars` / `PDO` |
