using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Contact : MonoBehaviour {

	int scoreValue = 1;

	GameController gameController;
	
	void Start ()
	{
		GameObject gameControllerObject = GameObject.FindWithTag ("GameController");
		if (gameControllerObject != null)
		{
			gameController = gameControllerObject.GetComponent <GameController>();
		}
		if (gameController == null)
		{
			Debug.Log ("Cannot find 'GameController' script");
		}
	}

	void OnCollisionEnter(Collision col){
		if (col.gameObject.tag == "Bat"){
			ScoreManager.score += scoreValue;
			
			//Debug.Log ("Hit");
		}

		if (col.gameObject.tag == "Lose")
		{
			gameController.GameOver ();
			//Destroy(col.gameObject);
			//Debug.Log ("Hit Lose Collider");
		}

		if (col.gameObject.tag == "Win")
		{
			gameController.GameWin ();
			//Debug.Log ("Hit Win Collider");

		}
	}

}



