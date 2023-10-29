extends Node2D

class_name World

@export var speed :int = 200
var is_actioned: bool = false
@onready var wrl_debug = $wrlDebug

@onready var spawner = $Spawner

func _unhandled_input(event):
	if Input.is_action_pressed("Action"):
		is_actioned = true
	else :is_actioned = false


func _process(delta):
	if is_actioned:
		Global.speed *= 1.005
	else :
		Global.speed *= 0.995
	wrl_debug.text = str(Global.speed)



