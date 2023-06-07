extends KinematicBody2D

var speed = 400


func _ready():
	GlobalVariables.enemyBulletInstanceCount +=1
	set_physics_process(true)



func _physics_process(delta):
	var collideObject = move_and_collide(Vector2(0, +speed*delta*0.4))
	if (collideObject):
		
		if "enemy" in collideObject.collider.name:
			pass
		
		else:
			queue_free()
			GlobalVariables.enemyBulletInstanceCount -= 1
			print("Enemy Bullet: ", GlobalVariables.enemyBulletInstanceCount)
			if "Player" in collideObject.collider.name:
				get_tree().change_scene("res://MainGame/Lbozo.tscn")
				
