extends Node


var speed :float = 200.0 :
	set(value):
		speed = clamp(value,200.0,500.0)
