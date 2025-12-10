class_name ItemEjector extends BeltComponent

#var slots: Array[BeltItem] = []
#var filters: Array[ItemFilter] = []
var direction: Globals.BELT_DIRECTION = Globals.BELT_DIRECTION.FORWARD


#func clear_slots() -> void:
	#self.slots = []
	#return
	#
	#
#func clear_filters() -> void:
	#self.filters = []
	#return
	#
	#
#func clear_slots_and_filters() -> void:
	#self.clear_slots()
	#self.clear_filters()
	#return
