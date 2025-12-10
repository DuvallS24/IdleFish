class_name ItemAcceptorSlot extends RefCounted

var position: int
var direction: Globals.BELT_ORIENTATION = Globals.BELT_ORIENTATION.NORTH
var filters: Array[ItemFilter] = []


func _init(_position: int, 
			_direction: Globals.BELT_ORIENTATION = Globals.BELT_ORIENTATION.NORTH, 
			_filters: Array[ItemFilter] = []) -> void:
	
	self.position = _position
	self.direction = _direction
	self.filters = _filters
	
	return
