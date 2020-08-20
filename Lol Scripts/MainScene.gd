extends Node2D


var tube_scene = preload("res://Entities/Tube.tscn")


func _ready():
	pass 


func _process(delta):
	get_node("CanvasLayer/ScoreText").text = str(Vars.score)

func timer():
	add_child(tube_scene.instance())
	pass
