extends Node2D
var selected_shape : Polygon2D
@export var shapes_library: Array[Polygon2D] =[]



func _ready():
	randomize()
	
	selected_shape = pick_one()
	selected_shape.visible = true


func pick_one()->Polygon2D:
	if shapes_library !=[]:
		return shapes_library.pick_random()
	else :
		push_error("No shapes are available")
		return null


#
#func _process(delta):
#	pass
