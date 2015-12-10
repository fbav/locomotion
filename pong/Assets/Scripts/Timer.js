#pragma strict

private var text : Text;       // Reference to the Text component.
var timer = 0.0;


function Awake ()
{
    text = GetComponent (Text);

}


function Update ()
{
    timer += Time.deltaTime;
    var intTime : int = timer;
    text.text = "Time: " + intTime;
}