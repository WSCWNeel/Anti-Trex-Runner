extends CharacterBody2D


const SPEED = 595.0
const JUMP_VELOCITY = -355.0
const direction = 1

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var animated_sprite = $AnimatedSprite2D 
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("Still")
		else:
			animated_sprite.play("Running")
	else:
		animated_sprite.play("Jumping")
		
	if Input.is_action_just_pressed("move_right"):
				animated_sprite.play("Running")

	# Get the input direction and handle the movement/deceleration.
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
