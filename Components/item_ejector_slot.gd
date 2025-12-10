class_name ItemEjectorSlot extends RefCounted


var position: int
var direcion: Globals.BELT_ORIENTATION = Globals.BELT_ORIENTATION.NORTH
var item: BeltItem
var previousItem: BeltItem
var progress: float = 0
var destination_slot: ItemAcceptorSlot

# TODO Update this to a specific item definition and not just RefCounted
var destination_entity: RefCounted


func _init(_position: int, _direction: Globals.BELT_ORIENTATION = Globals.BELT_ORIENTATION.NORTH) -> void:
	
	self.position = _position
	self.direcion = _direction
	
	return
