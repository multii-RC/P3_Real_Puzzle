extends Area2D

var isInteractable = false

@onready var vaseLabel: Label = $Label
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	vaseLabel.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	isInteractable = true
	vaseLabel.visible = true
		
func _input(event: InputEvent) -> void:
	# Skip if not interactable or not visible
	if not isInteractable:
		return
	
	if Input.is_action_just_pressed("Interact"):
		GameManager.manaCrystals += 1
		queue_free()
		
func _on_body_exited(body: Node2D) -> void:
	isInteractable = false
	vaseLabel.visible = false
