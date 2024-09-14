extends Node2D

var aimer
var bullet
# Called when the node enters the scene tree for the first time.
func _ready():
	aimer=get_node("Hunter").get_node("Barrel")
	bullet=get_node("BulletStack")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	   # Mouse in viewport coordinates.
	if event is InputEventMouseButton:
		print("Mouse Click/Unclick at: ", event.position)
		var vinks=aimer.global_position.angle_to_point(event.position)
		print ("winks",vinks)
		bullet.global_position=aimer.global_position+Vector2(100.0,0.0).rotated(vinks)
		bullet.set_velocity(Vector2(1.0,0.0).rotated(vinks))
	elif event is InputEventMouseMotion:
		print("Mouse Motion at: ", event.position)
		var vinks=((event.position.angle_to_point(aimer.global_position)/(2*PI))*360.0)-90.0
		print("winks",vinks)
		aimer.Reorient(vinks)
   # Print the size of the viewport.
