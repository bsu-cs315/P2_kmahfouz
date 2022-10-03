extends KinematicBody2D

const _GRAVITY := 350
const _JUMP_STRENGTH := 300
const _SPEED := 300

var _velocity := Vector2.ZERO


onready var _sprite := find_node('AnimatedSprite')

func _physics_process(delta:float)->void:
	_velocity.y += _GRAVITY * delta
		
	var input := Vector2.ZERO
	input.x = Input.get_axis("Left", "Right")
	
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		_velocity.y = -_JUMP_STRENGTH
	
	_velocity.x = input.x * _SPEED
	_velocity = move_and_slide(_velocity, Vector2.UP)
	
	_update_animation(input)
	
	
func _update_animation(input:Vector2):
	if input.x < 0:
		_sprite.scale.x = -1
	else: 
		_sprite.scale.x = 1
		
	if input.x == 0:
		_sprite.play("idle")
	else: 
		_sprite.play("walk") 
	
