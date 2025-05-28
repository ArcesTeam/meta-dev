# GitHub 仓库构建与项目结构设定

## 仓库命名建议

- 推荐仓库名：`Meta` 或 `MetaPlatform`
- 描述信息建议：A declarative metadata-driven mod development framework for
  Minecraft and beyond.

---

## 仓库基础结构

```text
meta/
├── docs/ # 项目文档目录
│ └── bootstrap/ # 初始化阶段文档
├── .github/ # GitHub 配置（issue, pr, workflows 等）
│ ├── ISSUE_TEMPLATE/
│ ├── PULL_REQUEST_TEMPLATE.md
│ ├── workflows/ # GitHub Actions 自动化流程
├── LICENSE
├── README.md
└── CONTRIBUTING.md
```

---

## 操作步骤

1. 在 GitHub 创建仓库；
2. 设置 Topics，例如：`minecraft-mod`, `metadata`, `framework`, `low-code`;
3. 初始化 README 与 LICENSE（建议 MIT）；
4. 启用 Discussions 与 Projects 功能；
5. 推送上述目录结构；
6. 设置默认分支为 `main` 或 `dev`；
7. 添加 README 徽章（构建状态、版本、license 等）。
