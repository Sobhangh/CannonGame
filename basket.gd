extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal ball_entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	emit_signal("ball_entered")


	
func get_width():
	return ($Polygon2D.polygon[5].x - $Polygon2D.polygon[0].x)*scale.x


func _on_Area2D_body_entered(body):
	emit_signal("ball_entered") # Replace with function body.
