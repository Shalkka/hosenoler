extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	print ("ENTERED",body)
	pass # Replace with function body.


func _on_rigid_body_2d_body_entered(body):
	print("sideways")
	pass # Replace with function body.
