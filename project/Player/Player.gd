extends KinematicBody2D

const _GRAVITY := 150
const _JUMP_STRENGTH := 150
const _SPEED := 200

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
	_sprite.scale.x = -1 if input.x < 0 else 1
# warning-ignore:standalone_ternary
	_sprite.play("idle") if input.x == 0 else _sprite.play("walk")
	
