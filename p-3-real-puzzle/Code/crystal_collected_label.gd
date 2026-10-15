extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CrystalCollected.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_game_manager_crystal_collect() -> void:
	$CrystalCollected.visible = true
	$CrystalCollectTimer.start()
	print("crystal collect")


	
func _on_crystal_collect_timer_timeout() -> void:
	$CrystalCollected.visible = false
