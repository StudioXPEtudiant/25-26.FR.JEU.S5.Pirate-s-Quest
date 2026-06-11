extends CharacterBody3D
@export var moveSpeed: float=5
@export var movefall: float= -5
func _physics_process(delta):
	velocity.y = movefall
	velocity.x = Input.get_axis("moveLeft","moveRight") * moveSpeed
	velocity.z = Input.get_axis("moveUp","moveDown") * moveSpeed
	move_and_slide()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
