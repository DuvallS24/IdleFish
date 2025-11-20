class_name FishData extends Resource

@export var name: String
@export var tags: Array[String]
@export_category("Visuals")
@export var sprite: Texture2D
@export_category("Values")
@export var base_value: int = 1:
	set(value):
		base_value = value
		_calculate_sell_value()
@export var base_mult: int = 1:
	set(value):
		base_mult = value
		_calculate_sell_value()
@export var value_additive: int = 0:
	set(value):
		value_additive = value
		_calculate_sell_value()
@export var mult_additive: int = 0:
	set(value):
		mult_additive = value
		_calculate_sell_value()
@export var value_mult: int = 1:
	set(value):
		value_mult = value
		_calculate_sell_value()
@export var mult_mult: int = 1:
	set(value):
		mult_mult = value
		_calculate_sell_value()

var sell_value: int = 0


func _to_string() -> String:
	return self.name


func _calculate_sell_value():
	var additive_value: int = (base_value + value_additive) * value_mult
	var mult_value: int = (base_mult + mult_additive) * mult_mult
	
	self.sell_value = additive_value * mult_value
	emit_changed()


func get_sell_value() -> int:
	return sell_value
