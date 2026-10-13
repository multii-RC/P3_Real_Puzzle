extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


#resets the player if they fall off the map
func _on_body_entered(body: Node2D) -> void:
	print("Body enters world boundary")
	$"../player".global_position = $Marker2D.global_position
		
#body.name = player
