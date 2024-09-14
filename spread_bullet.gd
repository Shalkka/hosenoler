extends Node2D

var velocity_x=0.0
var velocity_y=0.0

var instance_layer1=null
var instance_layer2=null
var instance_layer3=null
var instance_layer4=null
var instance_layer5=null
var instance_layer6=null
var instance_layer7=null
var instance_layer8=null
var instance_layer9=null
var instance_layer10=null


# Called when the node enters the scene tree for the first time.
func _ready():
	instance_layer1=get_node("Node2D")
	instance_layer2=get_node("Node2D2")
	instance_layer3=get_node("Node2D3")
	instance_layer4=get_node("Node2D4")
	instance_layer5=get_node("Node2D5")
	instance_layer6=get_node("Node2D6")
	instance_layer7=get_node("Node2D7")
	instance_layer8=get_node("Node2D8")
	instance_layer9=get_node("Node2D9")
	instance_layer10=get_node("Node2D10")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x=position.x+velocity_x
	position.y=position.y+velocity_y

func set_velocity(velv):
	velocity_x=velv.x
	velocity_y=velv.y
	
func launch_reset():
	instance_layer1.position=Vector2(0.0,0.0)
	instance_layer1.set_velocity(Vector2(0.0,0.0))
	instance_layer1.phase_layer=0
	instance_layer2.position=Vector2(0.0,0.0)
	instance_layer2.set_velocity(Vector2(0.0,0.0))
	instance_layer2.phase_layer=1
	instance_layer3.position=Vector2(0.0,0.0)
	instance_layer3.set_velocity(Vector2(0.0,0.0))
	instance_layer3.phase_layer=3
	instance_layer4.position=Vector2(0.0,0.0)
	instance_layer4.set_velocity(Vector2(0.0,0.0))
	instance_layer4.phase_layer=4
	instance_layer5.position=Vector2(0.0,0.0)
	instance_layer5.set_velocity(Vector2(0.0,0.0))
	instance_layer5.phase_layer=5
	instance_layer6.position=Vector2(0.0,0.0)
	instance_layer6.set_velocity(Vector2(0.0,0.0))
	instance_layer6.phase_layer=6
	instance_layer7.position=Vector2(0.0,0.0)
	instance_layer7.set_velocity(Vector2(0.0,0.0))
	instance_layer7.phase_layer=7
	instance_layer8.position=Vector2(0.0,0.0)
	instance_layer8.set_velocity(Vector2(0.0,0.0))
	instance_layer8.phase_layer=8
	instance_layer9.position=Vector2(0.0,0.0)
	instance_layer9.set_velocity(Vector2(0.0,0.0))
	instance_layer9.phase_layer=9
	instance_layer10.position=Vector2(0.0,0.0)
	instance_layer10.set_velocity(Vector2(0.0,0.0))
	instance_layer10.phase_layer=10

func initiate_velospread():
	instance_layer1.set_velocity(Vector2(velocity_x*0.0,velocity_y*0.0))
	instance_layer2.set_velocity(Vector2(velocity_x*0.1,velocity_y*0.1))
	instance_layer3.set_velocity(Vector2(velocity_x*0.2,velocity_y*0.2))
	instance_layer4.set_velocity(Vector2(velocity_x*0.3,velocity_y*0.3))
	instance_layer5.set_velocity(Vector2(velocity_x*0.4,velocity_y*0.4))
	instance_layer6.set_velocity(Vector2(velocity_x*0.5,velocity_y*0.5))
	instance_layer7.set_velocity(Vector2(velocity_x*0.6,velocity_y*0.6))
	instance_layer8.set_velocity(Vector2(velocity_x*0.7,velocity_y*0.7))
	instance_layer9.set_velocity(Vector2(velocity_x*0.8,velocity_y*0.8))
