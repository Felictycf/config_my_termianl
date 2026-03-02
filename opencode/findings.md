# Findings & Decisions

## Requirements
- 中文 PPT
- 受众：产品
- 主题：LangChain DeepAgents 框架使用
- 风格：TED
- 需要生成可交付 PPTX

## Research Findings
- DeepAgents 构建在 LangGraph 上，面向复杂多步骤任务，灵感来自 Claude Code / Deep Research / Manus。
- 默认中间件包含 TodoList（write_todos）、Filesystem（ls/read/write/edit/glob/grep/execute）、SubAgent（task）。
- 核心 API 为 `create_deep_agent`，支持自定义工具、子代理、中间件、后端、记忆与检查点。
- 支持长期记忆（LangGraph Store）、文件系统后端（State/Filesystem/Store/Composite）。
- 支持人机协作（Human-in-the-loop）用于关键步骤审批与干预。
- 官方文档包含 overview/quickstart/customization/harness/backends/subagents/human-in-the-loop/long-term-memory/middleware/cli。

## Technical Decisions
| Decision | Rationale |
|----------|-----------|
| 10 页 TED 结构 | 适配产品受众的节奏与信息密度 |
| 强调功能能力 | 用户明确要求“强调功能” |
| 不包含 Demo 代码页 | 用户明确“不需要 demo 页” |
| TED 风格叙事 + 产品视角 | 强调“问题-机会-应用-风险-落地路径”更适配产品受众 |
| 选用高对比、单一强调色 | TED 风格简洁、聚焦单一信息点 |

## Issues Encountered
| Issue | Resolution |
|-------|------------|
|       |            |

## Resources
- https://docs.langchain.com/oss/python/deepagents/overview
- https://docs.langchain.com/oss/python/deepagents/quickstart
- https://docs.langchain.com/oss/python/deepagents/customization
- https://docs.langchain.com/oss/python/deepagents/harness
- https://docs.langchain.com/oss/python/deepagents/backends
- https://docs.langchain.com/oss/python/deepagents/subagents
- https://docs.langchain.com/oss/python/deepagents/human-in-the-loop
- https://docs.langchain.com/oss/python/deepagents/long-term-memory
- https://docs.langchain.com/oss/python/deepagents/middleware
- https://docs.langchain.com/oss/python/deepagents/cli
- https://reference.langchain.com/python/deepagents/
- https://github.com/langchain-ai/deepagents

## Visual/Browser Findings
- TED 风格：大标题、少量文字、强对比配色、单页一个核心信息点。
