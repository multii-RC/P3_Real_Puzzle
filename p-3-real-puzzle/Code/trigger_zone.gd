extends Area2D

@onready var doorLabel: Label = $Label
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	doorLabel.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	print("player entered")
	
	if GameManager.manaCrystals >= 2: 
		queue_free()
		$"../Door".queue_free()
	else:
		print("Not Enough Mana Crystals")
		doorLabel.visible = true
		return
	
	#for item in ["BlueKey", "RedKey"]:
		#print("Checking" + item)
		#if (item not in GameManager.inventory):
			#print(item + "not in inventory, end execution")
			#return
		#else: 
			#print(item + "in inventory")
			
			
func _on_body_exited(body: Node2D) -> void:
	doorLabel.visible = false
