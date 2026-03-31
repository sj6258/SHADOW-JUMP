extends CharacterBody2D

var player : Sprite2D
var tp_distance : float = 50
var face = Vector2.RIGHT.rotated(rotation)

const SPEED = 130.0
const JUMP_VELOCITY = -300.0

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	var input_dir = Input.get_vector("left","right","up","down")
	var direction = Input.get_axis("left","right")
	
	if direction > 0:
		animated_sprite_2d.flip_h = false
	if direction < 0:
		animated_sprite_2d.flip_h = true
	
	if is_on_floor():
		if direction == 0:
			animated_sprite_2d.play("idle")
		else:
			animated_sprite_2d.play("run")
	else:
		animated_sprite_2d.play("jump")

	
	if input_dir != Vector2.ZERO:
		face = input_dir.normalized()

	if not is_on_floor():
		velocity += get_gravity() * delta


	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	if Input.is_action_just_pressed("tp") :
		global_position += face * tp_distance
		

	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
