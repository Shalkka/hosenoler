extends Node2D

var aimer
# Called when the node enters the scene tree for the first time.
func _ready():
	aimer=get_node("Hunter").get_node("Barrel")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	   # Mouse in viewport coordinates.
	if event is InputEventMouseButton:
		print("Mouse Click/Unclick at: ", event.position)
	elif event is InputEventMouseMotion:
		print("Mouse Motion at: ", event.position)
	var vinks=((event.position.angle_to_point(aimer.global_position)/(2*PI))*360.0)-90.0
	print("winks",vinks)
	aimer.Reorient(vinks)
   # Print the size of the viewport.
