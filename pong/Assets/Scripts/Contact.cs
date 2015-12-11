using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Contact : MonoBehaviour {

	public Rigidbody sphere;
	public float shotForce = 1000f;
	public float moveSpeed = 10f; 
	
	int scoreValue = 1;

	void OnCollisionEnter(Collision col){
		if (col.gameObject.tag == "Bat"){
			ScoreManager.score += scoreValue;
			
			Debug.Log ("Hit");
		}
	}

	void shoot()
	{
		//print("rightThumbNode -- " + rightThumbNode.GetOrientationWorld().ToString());
		//Vector3 thumbVec = new Vector3(0f, 0f, 0f);// = rightThumbNode.GetPositionLocal();
		//float thumbPos = thumbVec.z * -1;
		int sphereNumber = GameObject.FindGameObjectsWithTag("Sphere").Length;
		//print("thumbPos -- " + thumbPos);
		//if (thumbPos < 0.7 && thumbPos > 0.6 && projectileNumber == 0)
		Vector3 screenPosition = Camera.main.ScreenToWorldPoint(new Vector3(Random.Range(0,Screen.width), Random.Range(0,Screen.height), Camera.main.farClipPlane/2));

		if (sphereNumber == 0)

		{
			Rigidbody shot = Instantiate(sphere,screenPosition,Quaternion.identity) as Rigidbody;
			shot.AddForce(transform.forward * shotForce);

		}
	}
}



