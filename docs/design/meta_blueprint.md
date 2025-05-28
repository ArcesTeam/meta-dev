# 蓝图系统设计构想

## 设计目标

- 支持结构、工厂、物流网络等实体的结构化数据保存
- 每张蓝图是由多个元数据引用组成的组合单元
- 蓝图可以进行复制、导入、导出、分享、变体替换

## 示例

```json
{
  "type": "blueprint:block_structure",
  "name": "basic_crusher",
  "components": [
    "metal_frame",
    "logic_unit",
    "power_port"
  ],
  "layout": [
    [
      [
        "metal_frame"
      ],
      [
        "logic_unit"
      ]
    ]
  ]
}
```
