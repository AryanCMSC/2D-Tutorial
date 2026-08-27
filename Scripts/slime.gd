extends Node2D

@onready var rc_right: RayCast2D = $RCRight
@onready var rc_left: RayCast2D = $RCLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 60
var direction = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if rc_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	elif rc_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
		
	position.x += direction * SPEED * delta
