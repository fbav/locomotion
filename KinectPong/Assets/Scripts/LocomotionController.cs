using UnityEngine;
using System.Collections;
using MiddleVR_Unity3D;
using System;

public class LocomotionController : MonoBehaviour {
	
	private vrNode3D centerNode;
	private vrNode3D neckNode;
	private vrNode3D headNode;
	private vrNode3D cameraNode;
	private vrNode3D rightHandNode;
	private vrTracker rightHandTracker;
	public bool tracked;
	public GameObject shield;
	public GameObject projectile;
	
	void Start () {
		centerNode = MiddleVR.VRDisplayMgr.GetNode("VRSystemCenterNode");
		//neckNode = MiddleVR.VRDisplayMgr.GetNode("Kinect0.User0.Neak");
		headNode = MiddleVR.VRDisplayMgr.GetNode("Kinect0.User0.Head");
		cameraNode = MiddleVR.VRDisplayMgr.GetNode("Camera0");
		rightHandNode = MiddleVR.VRDisplayMgr.GetNode("Kinect0.User0.Right_Hand_Node");
		//rightHandTracker = MiddleVR.VRDeviceMgr.GetTracker("Kinect0.User0.Right_Hand");
		projectile = GameObject.FindWithTag("Projectile");
		
	}
	
	void FixedUpdate() {
		
		//if (rightHandTracker.IsTracked())
		//{
			//tracked = true;
            //projectile.SetActive(true);
           // Rigidbody rb = Instantiate(projectile, transform.position, transform.rotation) as Rigidbody;
           // Debug.Log("Hand Tracking Active");
		//}
		
		// cameraNode.SetOrientationWorld(headNode.GetOrientationWorld());
		float xPos = MiddleVRTools.ToUnity(rightHandNode.GetPositionLocal()).x * -15;
		float yPos = MiddleVRTools.ToUnity(rightHandNode.GetPositionLocal()).y * 5;
		float zPos = MiddleVRTools.ToUnity(rightHandNode.GetPositionLocal()).z * -2;
		shield.transform.localPosition = new Vector3(xPos, yPos, zPos);

        float xPosCam = MiddleVRTools.ToUnity(cameraNode.GetPositionLocal()).x;
        float yPosCam = MiddleVRTools.ToUnity(cameraNode.GetPositionLocal()).y;
        float zPosCam = MiddleVRTools.ToUnity(cameraNode.GetPositionLocal()).z;

        Debug.Log("camera:" + Camera.main.transform.position);
      

        



        //shield.transform.localRotation = MiddleVRTools.ToUnity(headNode.GetOrientationLocal());
    }
}
