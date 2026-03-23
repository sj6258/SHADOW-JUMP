extends CharacterBody2D

var player : Sprite2D
var tp_distance : float = 50
var face = Vector2.RIGHT.rotated(rotation)

const SPEED = 130.0
const JUMP_VELOCITY = -300.0


func _physics_process(delta: float) -> void:
	var input_dir = Input.get_vector("left","right","up","down")
	
	if input_dir != Vector2.ZERO:
		face = input_dir.normalized()

	if not is_on_floor():
		velocity += get_gravity() * delta


	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	if Input.is_action_just_pressed("tp") :
		global_position += face * tp_distance
		

	var direction := Input.get_axis("left" , "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
