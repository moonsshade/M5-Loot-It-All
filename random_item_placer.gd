extends Node2D

func _ready() -> void:
	var gem_scene := preload("gem.tscn")
	var gem_instance := gem_scene.instantiate()
	add_child(gem_instance)
	
