extends Area2D


@export var color = Color(1,0,0)



func _on_body_exited(body: Node2D) -> void:
	$ColorRect.color = Color(1,0,0)


func _on_body_entered(body: Node2D) -> void:
	$ColorRect.color = color
