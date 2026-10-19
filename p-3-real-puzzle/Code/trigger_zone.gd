extends Area2D

#want to be able to set cost values for new doors if I add them
@export var doorCost: int

@onready var doorLabel: Label = $Label
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	doorLabel.visible = false
	doorLabel.text = "You need " + str(doorCost) + " Crystals!"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#Going through door
func _on_body_entered(body: Node2D) -> void:
	print("player entered")
	
	if GameManager.manaCrystals >= doorCost:
		$Door.queue_free()
		GameManager.manaCrystals -= doorCost
		queue_free()
	else:
		print("Not Enough Mana Crystals, you need " + str(doorCost))
		doorLabel.visible = true
		return

			
func _on_body_exited(body: Node2D) -> void:
	doorLabel.visible = false
