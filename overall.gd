extends Node2D

var aimer
var bullet
var disc
# Called when the node enters the scene tree for the first time.
func _ready():
	aimer=get_node("Hunter").get_node("Barrel")
	bullet=get_node("BulletStack")
	disc=get_node("Skybogey")
	bullet.get_node("Node2D").collision_buddy=disc.get_node("Node2D")
	bullet.get_node("Node2D2").collision_buddy=disc.get_node("Node2D2")
	bullet.get_node("Node2D3").collision_buddy=disc.get_node("Node2D3")
	bullet.get_node("Node2D4").collision_buddy=disc.get_node("Node2D4")
	bullet.get_node("Node2D5").collision_buddy=disc.get_node("Node2D5")
	bullet.get_node("Node2D6").collision_buddy=disc.get_node("Node2D6")
	bullet.get_node("Node2D7").collision_buddy=disc.get_node("Node2D7")
	bullet.get_node("Node2D8").collision_buddy=disc.get_node("Node2D8")
	bullet.get_node("Node2D9").collision_buddy=disc.get_node("Node2D9")
	bullet.get_node("Node2D10").collision_buddy=disc.get_node("Node2D10")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func signal_bounce():
	print ("a thing happened")

func _input(event):
	   # Mouse in viewport coordinates.
	if event is InputEventMouseButton:
		print("Mouse Click/Unclick at: ", event.position)
		var vinks=aimer.global_position.angle_to_point(event.position)
		#print ("winks",vinks)
		bullet.launch_reset()
		bullet.global_position=aimer.global_position+Vector2(100.0,0.0).rotated(vinks)
		bullet.set_velocity(Vector2(1.0,0.0).rotated(vinks))
		bullet.initiate_velospread()
	elif event is InputEventMouseMotion:
		#print("Mouse Motion at: ", event.position)
		var vinks=((event.position.angle_to_point(aimer.global_position)/(2*PI))*360.0)-90.0
		#print("winks",vinks)
		aimer.Reorient(vinks)
   # Print the size of the viewport.


func _on_rigid_body_2d_body_entered(body):
	print("weird place")
	pass # Replace with function body.
