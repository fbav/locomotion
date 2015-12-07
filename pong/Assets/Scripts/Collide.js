	// this script pushes all rigidbodies that the character touches
	var pushPower : float = 2.0;
	function OnControllerColliderHit (hit : ControllerColliderHit) {
		var body : Rigidbody = hit.collider.attachedRigidbody;
		// no rigidbody
		if (body == null || body.isKinematic)
			return;
			
		// We dont want to push objects below us
		if (hit.moveDirection.y < -0.3) 
			return;
		
		// Calculate push direction from move direction, 
		// Only push objects to the sides never up/down
		var pushDir : Vector3 = Vector3 (hit.moveDirection.x, 0, hit.moveDirection.z);
		
		// Apply the push
		body.velocity = pushDir * pushPower;
	}