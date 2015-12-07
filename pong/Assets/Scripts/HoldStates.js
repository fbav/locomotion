#pragma strict

var catchRange = 20.0;
var holdDistance = 3.0;
var layerMask : LayerMask = -1;
     
enum HoldState { Free, Catch, Occupied, Charge, Release};
private var holdState : HoldState = 0;
private var rigid : Rigidbody = null;

private var controller : CharacterController;
//public GameObject playerObject;


function Start () {

    var player: GameObject = GameObject.FindGameObjectWithTag("Player"); 
    controller = player.GetComponent(CharacterController);

}
function Update () {

//Cursor.lockState = CursorLockMode.Locked;
//Cursor.visible = false;

}
     
function FixedUpdate() 
{

   if(holdState == HoldState.Free) 
   {

     if(Input.GetButton("Fire1")) 
     {
     	var hit : RaycastHit;
        var p1 : Vector3 = transform.position + controller.center;
        // Cast a sphere wrapping character controller 10 meters forward, to see if it is about to hit anything
        if (Physics.SphereCast (p1, controller.height / 2, transform.forward, hit, 20)) {
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
     
    @script ExecuteInEditMode()