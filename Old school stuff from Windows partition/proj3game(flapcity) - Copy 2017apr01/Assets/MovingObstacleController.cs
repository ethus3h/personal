using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingObstacleController : MonoBehaviour {

    int step = 0;
    int getBigger = 0;
    private Rigidbody rb;
	// Use this for initialization
	void Start () {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update () {
        float delta = 0.1f;
        if(getBigger == 0)
        {
            delta = -1 * delta;
        }
        if (step < -80)
        {
            getBigger = 1;
        }
        if (step > 160)
        {
            getBigger = 0;
        }
        if (delta < 0)
        {
            step = step - 1;
        }
        else
        {
            step = step + 1;
        }
        rb.MovePosition(new Vector3(rb.position.x, rb.position.y, rb.position.z + delta));
        /* Debug.Log(step);
        Debug.Log(delta);
        Debug.Log(getBigger); */
    }
}
