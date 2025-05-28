# 项目初始化配置与开发环境说明

## 总览

本文件用于说明 Meta 项目的开发环境、所需工具链、模块依赖与核心构建体系，以确保每位贡献者能够顺利运行、调试与构建项目。

---

## 推荐开发工具

- **JDK**：建议版本 `17`（兼容 Minecraft 1.21.5 NeoForge）
- **构建工具**：`Gradle 8.5+`
- **IDE**：IntelliJ IDEA Ultimate 或 Community
- **其他工具**：
  - `.editorconfig`（统一代码风格）
  - `Lombok` 插件（如使用）
  - Git / GitHub CLI 工具

---

## 项目模块结构（建议）

```text
meta/
├── meta-api/ # 基础接口与注解定义
├── meta-core/ # 注册中心、数据结构核心逻辑
├── meta-runtime/ # 注解扫描与注入实现
├── meta-datagen/ # 数据生成器接口与实现
├── meta-docs/ # 文档模块（可选）
```

---

## 依赖分析建议流程

1. 明确每个模块是否需要依赖 Minecraft API 或只为纯工具模块；
2. 使用 `platform` + `api`/`implementation` 精细控制依赖粒度；
3. 避免核心模块强依赖游戏运行库（meta-api / meta-core 应尽可能纯净）；
4. 在 `meta-runtime` 与 `meta-datagen` 中通过专用桥接完成游戏集成。

---

## 环境初始化操作（建议）

```bash
git clone https://github.com/YourOrg/meta
cd meta
./gradlew setupDecompWorkspace
./gradlew genIntellijRuns
```

## 推荐的模块开发顺序

1. 定义基本结构（meta-api）

2. 实现核心注册中心（meta-core）

3. 搭建注解扫描器框架（meta-runtime）

4. 实现数据生成器原型（meta-datagen）

## 后续规划

> 请参考 v0 阶段文档，了解后续数据模型与注册器实现内容。

---

这些文档建议放入路径：

```text
meta/
└── docs/
└── bootstrap/
├── 00_overview.md
├── 01_github-setup.md
├── 02_projects-setup.md
├── 03_community-guidelines.md
└── 04_env-configuration.md
```
