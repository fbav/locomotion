using UnityEngine;
using System.Collections;

public class HoldStates : MonoBehaviour {

	public float catchRange = 20.0f;
	public float holdDistance = 3.0f;
	public LayerMask layermask = -1;
	
	enum HoldState { Free, Catch, Occupied, Charge, Release};
	private HoldState holdState = 0;
	private Rigidbody rigid = null;
	
	CharacterController controller;


	
	void Start () {
		
;


	}
	void Update () {
		
		//Cursor.lockState = CursorLockMode.Locked;
		//Cursor.visible = false;
		//CharacterController controller = GetComponent<CharacterController>();

	
	}
	
	void FixedUpdate() 
	{
		GameObject player = GameObject.FindGameObjectWithTag("Player"); 
		CharacterController controller = player.GetComponent<CharacterController>();


		if(holdState == HoldState.Free) 
		{
			
			if(Input.GetButton("Fire1")) 
			{
				RaycastHit hit;
				Vector3 p1 = transform.position + controller.center;
			
				if (Physics.SphereCast (p1, controller.height / 2, transform.forward, out hit, 20)) {
					//var distanceToObstacle = hit.distance;
					
					// if(Physics.SphereCast(transform.position, transform.forward, hit, catchRange, layerMask)) 
					//{
					
					if(hit.rigidbody) 
					{
						rigid = hit.rigidbody;
						rigid.useGravity = false;
						rigid.isKinematic = false;
						holdState = HoldState.Catch;
					}
				}
			}
		}
		
		else if(holdState == HoldState.Catch) 
		{
			rigid.MovePosition(transform.position + transform.forward * holdDistance);
			if(!Input.GetButton("Fire1"))
				holdState = HoldState.Occupied;
		}
		
		else if(holdState == HoldState.Occupied) 
		{
			rigid.MovePosition(transform.position + transform.forward * holdDistance);
			rigid.isKinematic = true;
			if(Input.GetButton("Fire1"))
				holdState = HoldState.Charge;
		}
		
		else if(holdState == HoldState.Charge) 
		{
			rigid.MovePosition(transform.position + transform.forward * holdDistance);
			
			if(!Input.GetButton("Fire1"))
				holdState = HoldState.Release;     
		}
		
		else if(holdState == HoldState.Release) 
		{
			rigid.useGravity = true;
			rigid.isKinematic = false;
			holdState = HoldState.Free;
		}
	}
}