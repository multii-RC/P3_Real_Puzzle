extends Node

#var has_key: bool = false

signal crystals_changed(new_value)

@onready var player: CharacterBody2D = $World/player


var manaCrystals: int

var inventory: Array[String]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	manaCrystals = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if manaCrystals + 1:
		#crystalCollect.emit()
		pass

#func _on_mana_crystal_single_collect() -> void:
	#manaCrystals += 1
	#crystalCollect.emit()
	#print("Crystal Collect")
	
func add_crystal(value):
	manaCrystals += value
	crystals_changed.emit(manaCrystals)
