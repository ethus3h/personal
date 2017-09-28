using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour
{

    public float speed;

    private Rigidbody rb;
    public GameObject pcamera;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    void Update()
    {
        if (Input.GetKey(KeyCode.Space))
        {
            rb.AddForce(new Vector3(0.0f, 10.0f, 0.0f));
            Debug.Log("blah");
        }
        // var x = Input.GetAxis("Horizontal") * Time.deltaTime * 150.0f;
        // var z = Input.GetAxis("Vertical") * Time.deltaTime * 3.0f;

        // transform.Rotate(0, x, 0);
        // transform.Translate(0, 0, z);
    }

    void FixedUpdate()
    {
        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");
        // Vector3 direction = pcamera.transform.position - transform.position;
        Vector3 movement = Vector3.MoveTowards(pcamera.transform.position,transform.position,1);
        //direction.x-moveHorizontal, 0.0f, direction.z-moveVertical
        // Vector3 movement = new Vector3(-moveHorizontal, 0.0f, -moveVertical);

        rb.AddForce(movement * speed);
        // rb.AddForce(Input.acceleration.x * speed, 0, -Input.acceleration.z * speed);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Pick Up"))
        {
            other.gameObject.SetActive(false);
        }
    }
}
