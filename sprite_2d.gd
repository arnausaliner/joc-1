extends CharacterBody2D

var velocitat := 200 # var velocitat: = Vector2(x,y)

func _ready() -> void:
	position = Vector2(0,0) #posiscio inicial

func _process(delta: float) -> void:
	var direccio = Vector2.ZERO
	velocitat = 200
	direccio = Input.get_vector("mou_esquerra","mou_dreta","mou_amunt","mou_avall")
	#if Input.is_action_pressed("mou_dreta"):
		#velocitat += Vector2.RIGHT
	#if Input.is_action_pressed("mou_esquerra"):
		#velocitat += Vector2.LEFT
	#if Input.is_action_pressed("mou_amunt"):
		#velocitat += Vector2.UP
	#if Input.is_action_pressed("mou_avall"):
		#velocitat += Vector2.DOWN
	if Input.is_action_pressed("augment_vel"):
		velocitat  += 300
	if Input.is_action_just_pressed("imprimir_velocitat"):
		print(velocitat)
	velocity = velocitat * direccio
	move_and_slide()
	anima(velocity, delta)
	
func anima(velocitat:Vector2, delta:float) -> void:
	var velocitat_angular := 0.05
	$TralaleroTralala/roda.rotation += velocitat_angular * velocitat.x * delta
	$TralaleroTralala/roda2.rotation += velocitat_angular * velocitat.x * delta
	
	
	
#func _physics_process(delta: float) -> void:
	#pass
