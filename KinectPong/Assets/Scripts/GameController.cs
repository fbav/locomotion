using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GameController : MonoBehaviour
{

	private Text restartText;
	private Text gameOverText;
	private Text gameWinText;
	
	private bool gameOver;
	private bool restart;
	private bool gameWin;

	private GameObject projectile;

	void Start ()
	{
		gameOver = false;
		restart = false;
		projectile = GameObject.FindWithTag("Projectile");
	
		restartText = GameObject.Find("RestartText").GetComponent<Text>();
		gameOverText = GameObject.Find("GameOverText").GetComponent<Text>();
		gameWinText = GameObject.Find("GameWinText").GetComponent<Text>();

		restartText.text = "";
		gameOverText.text = "";
		gameWinText.text = "";
	}
	
	void Update ()
	{
		if (Input.GetKeyDown (KeyCode.N)){
			Instantiate (projectile, transform.position, transform.rotation);
		}

		if (gameOver)
		{
			restartText.text = "Press 'R' to Restart";
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

	public void GameWin ()
	{
		//gameWinText.text = "You Win!";
		//gameOver = true;
		gameOverText.text = "You Win!";
		gameOver = true;

	}
}
