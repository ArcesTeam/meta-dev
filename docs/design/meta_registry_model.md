# 通用注册表模型设计

## 动机

支持 Minecraft 原版未定义的数据模型（如自定义技能、自定义特性等）以统一形式进行注册与引用。

## 模型定义

```json
{
  "type": "meta:registry",
  "id": "my_mod:my_custom_type",
  "schema": {},
  "entries": []
}
```

## 特性

- 支持泛型扩展
- 支持运行时注册
- 可接入数据生成体系
