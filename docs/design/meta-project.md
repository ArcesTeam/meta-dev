# Meta 项目开发计划书（V1 Blueprint）

**生成日期：2025-05-27**

## 🧭 项目核心愿景

**Meta 是一个声明式的游戏逻辑构建平台，它以数据元驱动为基础，提供模块化的行为、资源与交互拼装能力，为
Minecraft Mod 乃至其他游戏逻辑提供构建工具链，最终实现零代码构建可玩内容的目标。**

## 🧱 项目分层架构

| 层级 | 名称                     | 职责说明                                                         |
|----|------------------------|--------------------------------------------------------------|
| L0 | `meta-api`（抽象模型层）      | 提供所有 `Metadata<T>`、`MetadataType`、`MetadataBehavior` 等数据结构定义 |
| L1 | `meta-core`（运行时与注入层）   | 负责注册表、注入器、行为系统、模块组合的运行逻辑                                     |
| L2 | `meta-runtime`（扫描与装配桥） | 提供数据扫描器、桥接器、自动注册入口                                           |
| L3 | `meta-datagen`（数据生成层）  | 提供对 JSON/Asset 的结构化生成能力                                      |
| L4 | `meta-ui`（后期计划）        | 构建数据可视化编辑器（IDE、Web UI、游戏内GUI）                                |
| L5 | `meta-engine`（终极目标）    | 游戏逻辑模拟核心：行为解析器 + 状态机 + 运行时模拟容器                               |

## 📌 核心能力规划（MVP Roadmap）

| 阶段      | 名称              | 目标与产出                                                         |
|---------|-----------------|---------------------------------------------------------------|
| ✅ 第0阶段  | 架构基础重构          | 泛型化 `Metadata<T>` 架构，支持多类型注册表                                 |
| 🔜 第1阶段 | 数据模型清洗与标准定义     | 拆分基础元数据为最小可组合单元，定义标准字段集                                       |
| 🔜 第2阶段 | 行为元系统构建         | 提出 `Behavior`、`Trigger`、`Condition`、`Action` 概念，实现最小行为 DSL 模型 |
| 🔜 第3阶段 | 组合器与模块拼装机制      | 实现 `ComposableMetadata`，支持 JSON + 注解组合生成完整内容结构                |
| 🔜 第4阶段 | Datagen 与预览反馈系统 | 生成所有资源数据、Java stub 文件、游戏中预览 API                               |
| 🔜 第5阶段 | Blueprint 系统整合  | 引入蓝图保存、导入、导出系统                                                |
| 🔜 第6阶段 | 可视化编辑器          | 构建基于 Web/GUI 的拼装与部署环境                                         |
| 🔜 第7阶段 | Meta Engine 模拟器 | 游戏逻辑运行容器，脱离 Minecraft 实现行为解析器                                 |

## 🧩 关键概念词汇表

| 名称                   | 含义                          |
|----------------------|-----------------------------|
| `Metadata<T>`        | 元数据接口，用于定义可被组合的内容实体（如物品、方块） |
| `MetadataType`       | 元数据的类别（BLOCK、ITEM、FLUID 等）  |
| `BehaviorMetadata`   | 抽象的行为逻辑描述体，具备触发条件、执行行为等字段   |
| `ComposableMetadata` | 可组合的数据容器，聚合基础元数据与多个行为描述     |
| `Blueprint`          | 对一组组合元数据的封装与持久化结构           |
| `MetaRegistry`       | 用于注册、获取、查询各类元数据的数据中心        |
| `MetaInjector`       | 将元数据内容注入到 Minecraft 系统中的执行器 |

## 🛠️ 第一阶段建议启动项

- [ ] 完善 `Metadata<T>`、`MetadataType` 及其内建子类型结构（meta-api）
- [ ] 定义 `BehaviorMetadata` 的基础结构（type、condition、action、params）
- [ ] 构建 `ComposableMetadata` 组合模型，支持聚合数据与行为
- [ ] 实现最小注册机制：使用注解或 Builder 定义 metadata 并注册到 registry 中
- [ ] 为 ItemMetadata 提供 JSON 渲染与 Java stub 的最简生成器（meta-datagen）
- [ ] 撰写第一版 `package-info.java` 与模块结构注释
