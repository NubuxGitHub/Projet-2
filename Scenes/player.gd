extends Node2D
class_name Player

var pl_speed :float = 1.0:
	set(value):
		pl_speed = clamp (value,5.0,30.0)
	get:
		return pl_speed

var selected_anim :SpriteFrames
var is_actioned:bool = false
@onready var anim_sprite :AnimatedSprite2D = $AnimSprite
@onready var debug = $debug



func _unhandled_input(event):
	if Input.is_action_pressed("Action"):
		is_actioned = true
		
	else :
		is_actioned = false


func _ready():
	anim_sprite.play("walk")
	selected_anim = anim_sprite.get_sprite_frames()

func _process(delta):
#	debug.text = str(anim_sprite.speed_scale)
	debug.text = "fps: %s" % pl_speed
	
	if is_actioned: pl_speed += 0.08
	else :pl_speed -= 0.1
		
#	anim_sprite.speed_scale =  pl_speed * delta
	selected_anim.set_animation_speed("walk",pl_speed)

