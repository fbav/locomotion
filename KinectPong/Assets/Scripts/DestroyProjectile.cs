using UnityEngine;
using System.Collections;

public class DestroyProjectile : MonoBehaviour {
    public float lifeTime = 2;
	void Start () {
        Destroy(gameObject, lifeTime);
	}
	
}
