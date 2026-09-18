# Godot Skill Tree

Reusable Godot 4.8 addon for building, editing and running skill trees.

It includes an in-editor graph editor, currencies, requirements, effects, local progression saves, runtime UI, pan/zoom, reset with configurable refunds, and RU/EN localization.

## Installation

1. Copy the `addons/skill_tree_editor` folder into your Godot project.
2. Enable **Skill Tree** in **Project > Project Settings > Plugins**.
3. Create a tree in the **Skill Tree** editor screen and save its `.tres` outside the addon folder.
4. Add `addons/skill_tree_editor/scenes/skill_tree_view.tscn` to a game scene and assign the saved `SkillTreeData` resource.

The addon registers one autoload: `SkillTree`.

## Documentation

- [English guide](addons/skill_tree_editor/docs/USER_GUIDE_EN.md)
- [Русское руководство](addons/skill_tree_editor/docs/USER_GUIDE_RU.md)
- [Instructions for coding agents](addons/skill_tree_editor/AGENTS.md)

## Requirements

- Godot 4.8 or newer
- No Platform, Steam, game-specific singleton, project theme or custom input action dependency

## License

See [LICENSE](LICENSE). Non-commercial publication and distribution are
allowed with clear attribution to Dwang as the original author. Modified
versions must identify Dwang as the original author and co-author. Any
commercial use, monetization, sale, sublicensing or commercial distribution
requires prior written permission from Dwang.
