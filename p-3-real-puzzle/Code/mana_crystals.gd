extends Label

@onready var manaCrystalsLabel: Label = $"."


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameManager.crystals_changed.connect(update_total_crystals)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#manaCrystalsLabel.text = "Mana Crystals: " + str(GameManager.manaCrystals)
	
func update_total_crystals(new_value: int):
	manaCrystalsLabel.text = "Mana Crystals: " + str(GameManager.manaCrystals)
