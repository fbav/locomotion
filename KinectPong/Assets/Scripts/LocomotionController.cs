using UnityEngine;
using System.Collections;
using MiddleVR_Unity3D;

public class LocomotionController : MonoBehaviour {
   
    private vrNode3D centerNode;
    private vrNode3D neckNode;
    private vrNode3D headNode;
    private vrNode3D cameraNode;
    private vrNode3D rightHandNode;

    public GameObject shield;

    void Start () {
        centerNode = MiddleVR.VRDisplayMgr.GetNode("VRSystemCenterNode");
        //neckNode = MiddleVR.VRDisplayMgr.GetNode("Kinect0.User0.Neak");
        headNode = MiddleVR.VRDisplayMgr.GetNode("Kinect0.User0.Head");
        cameraNode = MiddleVR.VRDisplayMgr.GetNode("Camera0");
        rightHandNode = MiddleVR.VRDisplayMgr.GetNode("Kinect0.User0.Right_Hand_Node");
    }

    void FixedUpdate () {

        // cameraNode.SetOrientationWorld(headNode.GetOrientationWorld());
        float xPos = MiddleVRTools.ToUnity(rightHandNode.GetPositionLocal()).x * -15;
        float yPos = MiddleVRTools.ToUnity(rightHandNode.GetPositionLocal()).y * 5;
        float zPos = MiddleVRTools.ToUnity(rightHandNode.GetPositionLocal()).z * -2;
        shield.transform.localPosition = new Vector3(xPos, yPos, zPos);

        //shield.transform.localRotation = MiddleVRTools.ToUnity(headNode.GetOrientationLocal());
    }

    
}
