extends Node2D

var velocity_x=0.0
var velocity_y=0.0

var phase_layer=0

var spring_range=50**2

var collision_buddy=null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func set_velocity(velv):
	velocity_x=velv.x
	velocity_y=velv.y
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x=position.x+velocity_x
	position.y=position.y+velocity_y
	if collision_buddy:
		var separation=global_position.distance_squared_to(collision_buddy.global_position)
		##print("consider", separation)
		if separation<spring_range:
			bump()
		
func bump():
	print("bump")
	collision_buddy.hide()
	hide()
