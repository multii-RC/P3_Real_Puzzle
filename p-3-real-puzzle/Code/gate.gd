extends Area2D

var bodyInside = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.play("default")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	bodyInside = true
	print("body enetered")

func _input(event: InputEvent) -> void:
	if bodyInside and Input.is_action_just_pressed("Interact"):
		get_tree().change_scene_to_file("res://Scenes/Level2.tscn")
		print("next level")
	else:
		return

func _on_body_exited(body: Node2D) -> void:
	bodyInside = false
