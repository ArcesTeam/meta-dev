# 行为元数据设计

## 核心思想

将物品、方块、实体等在游戏中的“行为”进行拆解，并抽象为可组合的行为模块，构成一套高层级逻辑编排体系。

## 示例

```json
{
  "type": "meta:behavior.open_gui",
  "conditions": [
    "sneaking",
    "interact_with_main_hand"
  ],
  "target": "machine_crusher_gui"
}
```
