extends Node2D
@export var speed = 200
@export var shapes_library :PackedScene
var on_stage_shapes :Array =[]

@onready var spawn_point = $SpawnPoint
@onready var death_point = $DeathPoint
@onready var shapes_container = $ShapesContainer

func _ready():
	pass # Replace with function body.


func _process(delta):
	for item in shapes_container.get_children():
		if item.position.x < death_point.position.x:
			print ("Shape freed.")
			item.queue_free()
			
		else: item.position.x-= Global.speed * delta

func _on_timer_timeout():
	var instance = shapes_library.instantiate()
	instance.position = spawn_point.position
	shapes_container.add_child(instance)
	
	
