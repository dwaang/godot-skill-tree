@tool
class_name SkillData
extends Resource

## Identity fields used to identify and display the skill.
@export_group("Identity")
## Stable identifier used by requirements and save state.
@export var skill_id: String = ""
## Display name or translation key for the skill.
@export var title: String = "SKILL_NEW_TITLE"
## Optional player-facing description.
@export_multiline var description: String = ""
## Category label or translation key.
@export var category: String = "SKILL_CATEGORY_MAIN"
## Optional icon displayed by runtime skill UI.
@export var icon: Texture2D

## Graph layout and visibility fields.
@export_group("Graph")
## Top-left position in editor and runtime graph coordinates.
@export var editor_position: Vector2 = Vector2.ZERO
## Makes the skill visible without a fulfilled requirement.
@export var starts_unlocked: bool = false
## Skills and levels required before this skill can be purchased.
@export var requirements: Array[SkillRequirementData] = []

## Purchase cost and level progression fields.
@export_group("Progression")
## Currency key charged when this skill is purchased.
@export var currency_key: String = "skillpoints"
## Maximum purchasable level.
@export_range(1, 999, 1) var max_level: int = 1
## Price of the first level when manual prices are not set.
@export var base_cost: int = 1
## Additional cost applied per next level.
@export var cost_growth_rate: float = 0.5
## Optional exact costs, indexed by level minus one.
@export var costs_by_level: Array[int] = []
## Effects applied for each purchased level.
@export var effects: Array[SkillEffectData] = []

## Compatibility fields for migrating older tree data.
@export_group("Migration")
## Legacy identifiers retained to migrate old saved trees.
@export var legacy_paths: Array[String] = []

func get_cost(level: int) -> int:
	if level < 1 or base_cost <= 0: return 0
	if level <= costs_by_level.size():
		return costs_by_level[level - 1]
	return maxi(0, roundi(float(base_cost) * pow(float(maxi(level, 1)), cost_growth_rate)))
