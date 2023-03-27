extends CheckButton


func _redy():
	pass


func on_automaticfiring_pressed():
	GlobalVariables.automaticFiring = pressed
	print(pressed)
