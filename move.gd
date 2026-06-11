extends RigidBody3D
@export var moveSpeed: float=5

func _physics_process(delta):
	var left = "moveLeft"
	var up = "moveUp"
	var down = "moveDown"
	var right = "moveRight"
	var vertical_axe= Input.get_axis(up,down)
	var horizontal_axe= Input.get_axis(left,right)
	var direction= Vector3(horizontal_axe,0,vertical_axe)
	linear_velocity += direction * moveSpeed * delta
	prints(direction)
	var VitesseDeplassement = linear_velocity.length()
	if VitesseDeplassement > 5:
		look_at(global_position + linear_velocity)
		rotation.x = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
