extends Node

#var has_key: bool = false

signal crystals_changed(manaCrystals)

@onready var player: CharacterBody2D = $player

@onready var playerPosition: Marker2D = $player/Camera2D/PlayerPosition

var manaCrystals: int

var inventory: Array[String]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	manaCrystals = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func add_crystal(value):
	manaCrystals += value
	crystals_changed.emit(manaCrystals)
