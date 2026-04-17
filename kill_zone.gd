extends Area2D

func _on_body_entered(body):
	if body.name != "Player":
		return

	if body.is_rolling:
		get_parent().die()
		return

	# 2️⃣ JUMP ON ENEMY → enemy dies
	# player falling from above
	if body.velocity.y > 0 and body.global_position.y < global_position.y:
		body.velocity.y = -200   # small bounce
		get_parent().die()
		return

	# 3️⃣ Otherwise → NOTHING
	# player does NOT die
	# game does NOT restart
