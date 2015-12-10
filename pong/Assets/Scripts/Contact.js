#pragma strict

import UnityEngine.UI;
var scoreValue : int = 1;                 // The amount added to the player's score when the enemy dies.

function OnCollisionEnter(col: Collision){
   if (col.gameObject.tag == "Bat"){
     ScoreManager.score += scoreValue;
    	        
    Debug.Log ("Hit");
   }
 }

