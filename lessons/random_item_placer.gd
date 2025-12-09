extends Node2D
var item_scenes := [
	preload("gem.tscn"),
	preload("health_pack.tscn")
]
func _ready() -> void:
	get_node("Timer").timeout.connect(_on_timer_timeout)
	
func _on_timer_timeout() -> void:
	var random_item_scene: PackedScene = item_scenes.pick_random()
	var item_instance := random_item_scene.instantiate()
	add_child(item_instance)
