using UnityEngine;
using System.Collections;

public class Ricochet : MonoBehaviour {

    public float BounceStrength = 100;
    private Rigidbody rb;
    void OnCollisionEnter(Collision col)
    {
        rb = GetComponent<Rigidbody>();
        if (col.gameObject.name.Contains("shield"))
        {
            rb.AddForce(col.gameObject.transform.forward * BounceStrength * -1);
        }
        else {
            rb.AddForce(col.gameObject.transform.forward * BounceStrength);
        }
    }
}
