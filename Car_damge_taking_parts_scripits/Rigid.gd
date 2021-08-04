extends RigidBody

export var Max_Damage: int
var Damage_Count = 0 
var hinge_removed = false

func _ready():
	connect("body_entered",self,"_on_RigidBody_body_entered")
	set_as_toplevel(true)


func _on_RigidBody_body_entered(body):
	Damage_Count += 1
	if Damage_Count >= Max_Damage and not hinge_removed:
		$HingeJoint.queue_free()
		hinge_removed = true

