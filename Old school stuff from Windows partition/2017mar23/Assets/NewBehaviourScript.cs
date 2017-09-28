using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewBehaviourScript : MonoBehaviour {
    // Use this for initialization
    void Start() {
        Debug.Log("Yo");
        Rigidbody rb = GetComponent<Rigidbody>();
        rb.mass = 10;
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
