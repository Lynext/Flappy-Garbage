extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	position.y = 0
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.y += gravity * delta
	position.y += velocity.y * delta
	if(Input.is_action_just_pressed("jump")):
		velocity.y -= 500 
	
	pass


func _on_Bird_area_entered(area):
	if area.is_in_group("tube"):
		queue_free()
	pass 
