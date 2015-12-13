using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GameManager : MonoBehaviour
{

	public float startWait;
	private Text restartText;
	private Text gameOverText;
	
	private bool gameOver;
	private bool restart;

	void Start ()
	{
		gameOver = false;
		restart = false;
		restartText.text = "";
		gameOverText.text = "";

		restartText = GameObject.Find("RestartText").GetComponent<Text>();

		gameOverText = GameObject.Find("GameOverText").GetComponent<Text>();
		
	}
	
	void Update ()
	{
		if (gameOver)
		{
			restartText.text = "Press 'R' for Restart";
			restart = true;
		}

		if (restart)
		{
			if (Input.GetKeyDown (KeyCode.R))
			{
				Application.LoadLevel (Application.loadedLevel);
			}
		}
	}
	
	public void GameOver ()
	{
		gameOverText.text = "Game Over!";
		gameOver = true;
	}
}