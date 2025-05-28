# 项目管理（Projects）配置指南

> 本文档定义了 Meta 项目在 GitHub Projects 系统中的基本配置结构，旨在提高开发效率并便于阶段目标的追踪管理。

## 项目划分建议

建议基于功能与阶段双维度划分：

### 1. 阶段性主项目板（建议使用 Beta Projects）

- `Phase: Bootstrap`
- `Phase: v0 - 数据驱动架构`
- `Phase: v1 - 元数据类型扩展`
- `Phase: v2 - 元行为逻辑构建`
- `...`

每个板块独立追踪阶段目标、Issue、PR 与 Milestone。

### 2. 横向功能板（可选）

- `Documentation`
- `Community`
- `Development Tools`
- `Datagen Infrastructure`
- `Runtime Reflection`

---

## 项目管理建议流程

1. 每个阶段启动时建立专属项目板；
2. 将关键 Issue 以卡片形式加入；
3. 定义常规泳道（To Do / In Progress / Review / Done）；
4. 阶段结束后归档项目；
5. 项目板保持公共访问，支持协作者查看与评论。

---

## 自动化建议（可选）

- 配置 GitHub Actions，使 PR 合并自动关联卡片；
- 配置 Labels 与阶段映射（如 `phase:v0`, `type:doc`, `scope:registry`）；
- 使用 `/projects` 指令快速关联 issue 与卡片。
