# gstack-openclaw-skills - gstack 的 WorkBuddy/OpenClaw 适配版

<p align="center">
  <img src="https://img.shields.io/github/stars/garrytan/gstack" alt="Stars">
  <img src="https://img.shields.io/github/forks/garrytan/gstack" alt="Forks">
  <img src="https://img.shields.io/github/license/gstack-openclaw-skills/gstack-openclaw-skills" alt="License">
  <img src="https://img.shields.io/badge/AI-Assistant-WorkBuddy-blue" alt="WorkBuddy">
</p>

## 简介

gstack-openclaw-skills 是 [gstack](https://github.com/garrytan/gstack) 的开源 WorkBuddy/OpenClaw 适配版本，专门适配 WorkBuddy、OpenClaw 等 AI 助手平台。

gstack 是 Y Combinator 总裁兼 CEO Garry Tan 开源的 Claude Code 设置，包含 15 个专业工具，可以充当 CEO、设计师、工程经理、发布经理、文档工程师和 QA 的角色。Garry Tan 声称在 60 天内编写了**超过 60 万行生产代码**。

本项目将 gstack 的核心功能转换为通用 AI 助手技能格式，让你可以在任何支持技能的 AI 平台上使用这套强大的开发工作流。

## 核心功能

| 技能 | 角色 | 功能描述 |
|------|------|----------|
| `/office-hours` | YC 办公时间 | 重新定义产品问题，验证创业想法 |
| `/plan-ceo-review` | CEO/创始人 | 从商业角度评审功能想法 |
| `/plan-eng-review` | 工程经理 | 锁定技术架构，评估实现方案 |
| `/plan-design-review` | 高级设计师 | 设计评审，检查用户体验 |
| `/design-consultation` | 设计合作伙伴 | 构建完整设计系统 |
| `/review` | 高级工程师 | 代码审查，发现生产环境 bug |
| `/investigate` | 调试专家 | 系统化根因分析 |
| `/design-review` | 编码设计师 | 设计审计和修复 |
| `/qa` | QA 负责人 | 测试应用并修复 bug |
| `/qa-only` | QA 报告员 | 纯 bug 报告 |
| `/ship` | 发布工程师 | 同步代码、运行测试、推送 PR |
| `/document-release` | 技术作家 | 更新项目文档 |
| `/retro` | 工程经理 | 团队周报 |
| `/browse` | QA 工程师 | 真实浏览器测试 |
| `/setup-browser-cookies` | 会话管理器 | 导入浏览器 cookies |

## 强力工具

| 技能 | 功能描述 |
|------|----------|
| `/codex` | OpenAI Codex 独立审查（第二意见） |
| `/careful` | 危险操作警告（安全护栏） |
| `/freeze` | 限制文件编辑范围 |
| `/guard` | 完全安全模式（careful + freeze） |
| `/unfreeze` | 移除 freeze 边界 |
| `/gstack-upgrade` | 自我升级 |

## 快速开始

### 在 WorkBuddy 中使用

你可以通过以下方式使用 gstack-openclaw-skills 技能：

1. **手动复制**：将技能文件内容复制到你的 WorkBuddy 项目中
2. **技能市场**：未来将支持直接从技能市场安装

### 推荐工作流

```
1. /office-hours    → 向 AI 描述你想构建的产品
2. /plan-ceo-review → CEO 视角评审功能想法
3. /plan-eng-review → 工程经理锁定技术架构
4. /review          → 高级工程师审查代码
5. /qa              → QA 测试暂环境
6. /ship            → 发布代码
```

## 目录结构

```
gstack-openclaw-skills/
├── office-hours/           # YC 办公时间
├── plan-ceo-review/        # CEO 评审
├── plan-eng-review/        # 工程评审
├── plan-design-review/     # 设计评审
├── design-consultation/    # 设计咨询
├── review/                 # 代码审查
├── investigate/            # 调试调查
├── design-review/          # 设计审查
├── qa/                     # QA 测试
├── qa-only/                # QA 报告
├── ship/                  # 发布工具
├── document-release/       # 文档发布
├── retro/                 # 团队回顾
├── browse/                 # 浏览器测试
├── codex/                 # Codex 集成
├── careful/                # 安全护栏
├── freeze/                # 编辑锁定
├── guard/                  # 完全安全
├── docs/                   # 文档
├── SKILL.md               # 主技能文件
└── README.md              # 本文件
```

## 哲学理念

### 完整性原则 (Boil the Lake)

> "不要做半桶水，要做就做一整桶" —— Garry Tan

AI 辅助编程应该追求完整实现，而非走捷径。完成一项任务意味着真正完成，而不是留下"优化建议"或"待完成事项"。

### 智能借鉴

在借鉴其他产品的功能时，始终思考：
1. 该功能在原始产品中为何有效？
2. 该功能在自己的产品中可能成功还是失败？
3. 需要哪些适配才能使其在自己的产品中成功？

## 与 gstack 的区别

| 特性 | gstack (原版) | gstack-openclaw-skills |
|------|--------------|----------------------|
| 平台 | Claude Code | 通用 AI 助手 |
| 命令格式 | Slash 命令 | 技能调用 |
| 依赖 | Bun、Git、浏览器 | 无特殊依赖 |
| 本地脚本 | 包含 | 已转换为纯 prompt |

## 贡献指南

欢迎贡献！请阅读 [CONTRIBUTING.md](CONTRIBUTING.md) 了解如何参与贡献。

## 许可证

MIT License - 详见 [LICENSE](LICENSE) 文件。

## 致谢

- 感谢 [Garry Tan](https://github.com/garrytan) 创建 gstack
- 感谢所有贡献者

---

**备注**：本项目仅供学习交流使用，gstack 的版权归原作者所有。
