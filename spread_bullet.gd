extends Node2D

var velocity_x=0.0
var velocity_y=0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x=position.x+velocity_x
	position.y=position.y+velocity_y
