extends Node2D

@onready var crystalCollected: Label = $CrystalCollected

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	crystalCollected.visible = false
	GameManager.crystals_changed.connect(update_total_crystals)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func update_total_crystals(new_value: int):
	crystalCollected.global_position = $"../player/Camera2D/PlayerPosition".global_position
	crystalCollected.visible = true
	$CrystalCollectTimer.start()
	print("crystal collect")

	
func _on_crystal_collect_timer_timeout() -> void:
	crystalCollected.visible = false
