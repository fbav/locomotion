using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Timer : MonoBehaviour
{
	float timer; 
	
	Text text; 
	
	
	void Awake ()
	{
		text = GetComponent <Text> ();
			}
	
	
	void Update ()
	{
		timer += Time.deltaTime;
		int intTime = (int) timer;
		text.text = "Time: " + intTime;
	}
}
