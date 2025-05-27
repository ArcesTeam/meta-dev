# 📦 template-gradle-project

> **ArcesTeam 内部通用模板仓库**
> 作为 Arces 项目的项目模板体系的基于 [`template-project`](https://github.com/ArcesTeam/template-project) 构建的 Gradle
> 多模块项目模板仓库，适用于构建其他更复杂模板仓库（如 [`template-gradle-neoforge-project`](https://github.com/ArcesTeam/template-gradle-neoforge-project)）的基础模板。

---

## 📘 项目简介

`template-gradle-project` 是一个适用于团队内项目起步的通用基础模板，主要提供：

- 🧱 多模块标准结构
- ⚙️ 基础 Gradle 配置（Kotlin DSL）
- 📁 通用文档与协作规范
- 🚀 快速初始化与项目构建指南

该模板本身默认包含 Gradle 与 Java 的基本配置，适用于大多数 Java 项目。如果您需要更高级的功能或特定框架支持，可以考虑使用更具体的模板：

- [`template-gradle-neoforge-project`](https://github.com/ArcesTeam/template-gradle-neoforge-project) — NeoForge 模组项目模板

---

## 🚀 项目特性

- 🎯 **标准结构**：提供清晰、规范的仓库结构，统一团队开发风格；
- 📦 **文档齐全**：集成
  [README](https://github.com/ArcesTeam/template-gradle-project/blob/main/README-template.md)、
  [LICENSE](https://github.com/ArcesTeam/template-gradle-project/blob/main/LICENSE)、
  [CHANGELOG](https://github.com/ArcesTeam/template-gradle-project/blob/main/CHANGELOG/)、
  [CONTRIBUTING](https://github.com/ArcesTeam/template-gradle-project/blob/main/.github/CONTRIBUTING.md)、
  [CODE_OF_CONDUCT](https://github.com/ArcesTeam/template-gradle-project/blob/main/.github/CODE_OF_CONDUCT.md)
  等基础文档；
- ⚙️ **自动化配置**：预配置 GitHub Workflows、PR/Issue 模板，支持 CI/CD 起步；
- ✨ **编辑器支持**：提供通用的
  `.editorconfig` 与
  `.idea/copyright`（用于 ArcesTeam 项目）；
- 🛡️ **社区规范**：集成安全报告指引与社区行为准则，降低协作风险。

---

## 🧩 项目结构

```
template-gradle-project/
├── build.gradle.kts             # 根构建脚本（空壳）
├── settings.gradle.kts          # 多模块声明
├── gradle.properties            # 全局构建参数配置
├── .editorconfig                # 编辑器统一规范
├── modules/                     # 所有模块集中于此
│   ├── core/                    # 示例子模块：core
│   │   └── build.gradle.kts     # 子模块构建脚本
│   └── api/                     # 示例子模块：api
│       └── build.gradle.kts     # 子模块构建脚本
```

---

## ⚙️ Gradle 使用说明

### 🔧 构建要求

- **JDK**：17 或以上版本（推荐使用 `temurin`）
- **Gradle**：支持 Gradle Wrapper (`./gradlew`)
- **构建脚本语言**：使用 `groovy`

### 🏗️ 构建命令示例

```bash
# 使用 Wrapper 构建所有模块
./gradlew build

# 清理构建产物
./gradlew clean

# 构建指定模块（例如 core）
./gradlew :core:build

# 列出所有可用任务
./gradlew tasks
```

### 🛠️ 通用构建配置项（gradle.properties）

```properties
org.gradle.jvmargs=-Xmx2G
org.gradle.parallel=true
org.gradle.daemon=true
kotlin.code.style=official
```

这些配置提高了构建性能，建议保留。

### 📌 settings.gradle

```groovy
rootProject.name = "template-gradle-project"
// ...
```

此文件用于定义模块结构，所有模块应集中管理。

---

## ⚡️ 快速开始

### 🧱 从模板创建新仓库

点击 GitHub
界面右上角的 [Use this template](https://github.com/ArcesTeam/template-gradle-project/generate)
按钮，即可基于此模板创建新的仓库。

- 进行必要的项目名称替换 例: `{{project-name}}`->`your-repo-name`

更为详细地操作流程可以参考 GitHub
官方文档 [从模板创建仓库](https://docs.github.com/zh/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)

### 🛠️ 使用 GitHub CLI 创建

```bash
gh repo create <your-repo-name> --template ArcesTeam/template-gradle-project
```

- 进行必要的项目名称替换 例: `{{project-name}}`->`your-repo-name`

更为详细地使用流程可以参考 GitHub CLI
官方文档 [gh repo create](https://cli.github.com/manual/gh_repo_create)

> 💡 需要安装 GitHub CLI 工具

## 🧭 使用建议

你可以将此模板用作：

- 💼 团队级 Java 项目起始模板
- 🚀 快速搭建带有标准化配置的新仓库；
- 🔧 构建基础 SDK/API 框架项目
- 🧪 模块化测试项目结构实验
- 📁 搭建更复杂模板的基础依赖（推荐使用 [`template-gradle-neoforge-project`](https://github.com/ArcesTeam/template-gradle-neoforge-project) 进行扩展）；

---

## 🛠️ 可拓展方向

- 添加 Kotlin / Scala 支持
- 接入发布流程（如 Maven Central、GitHub Packages）
- 添加代码质量工具（Spotless、Checkstyle、Detekt 等）
- 集成 CI（GitHub Actions / Jenkins / TeamCity）

---

## 📄 License

本模板项目采用 [MIT License](https://github.com/ArcesTeam/template-gradle-project/blob/main/LICENSE)。

---

## 📣 联系我们

此项目由 [ArcesTeam](https://github.com/ArcesTeam) 维护，欢迎提出改进建议或提交 PR

---

## ✅ 你还可以：

- 🔍 查看 [ `template-gradle-neoforge-project`](https://github.com/ArcesTeam/template-gradle-neoforge-project) 获取构建逻辑支持；
- 🧪 使用此模板测试构建标准化结构；
- 💬 在 [Discussions](https://github.com/orgs/ArcesTeam/discussions) 中提交问题或反馈模板建议；
