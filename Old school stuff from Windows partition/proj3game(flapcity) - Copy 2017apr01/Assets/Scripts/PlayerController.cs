using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour
{

    public float speed;

    private Rigidbody rb;
    public GameObject pcamera;
    public GameObject scoreLabel;
    public int score = 0;
    private float jumpCooldown = 0;


    public float threshold;

    private bool isGrounded;


    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    void Update()
    {
        if (jumpCooldown > 0)
        {
            jumpCooldown -= Time.deltaTime;
        }
        else
        {
            if (Input.GetKey(KeyCode.Space) && !isGrounded)
            {
                rb.MovePosition(new Vector3(rb.position.x, rb.position.y + 4f, rb.position.z));
                jumpCooldown = 0.5f;
            }
        }
        if (Input.GetKey(KeyCode.A))
        {
            rb.AddForce(new Vector3(0.0f, 10.0f, 0.0f));
        }
    }

    void FixedUpdate()
    {
        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");
        Vector3 movement = new Vector3(moveHorizontal, 0.0f, moveVertical);
        movement = Camera.main.transform.TransformDirection(movement);
        rb.AddForce(movement * speed);

        /* float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");
        Vector3 movementx = Vector3.MoveTowards(pcamera.transform.position, transform.position, 1);
        movementx.x = movementx.x * moveVertical * -1;
        movementx.y = 0;
        movementx.z = 0;
        Vector3 movementz = Vector3.MoveTowards(pcamera.transform.position, transform.position, 1);
        movementz.x = 0;
        movementz.y = 0;
        movementz.z = movementz.z * moveHorizontal;

        rb.AddForce(movementx * speed);
        rb.AddForce(movementz * speed * -10); */
    }

    void OnTriggerEnter(Collider other) {
        if (other.gameObject.CompareTag("PickUp"))
        {
            other.gameObject.SetActive(false);
            score = score + 1;
            scoreLabel.GetComponent<TextMesh>().text = "Score: " + score;
        }
    }

    void OnTriggerEnter(Collision other)
    {
        foreach (ContactPoint temp in other.contacts)
        {
            if (Vector3.Cross(temp.normal, Vector3.up).y < Vector3.zero.y)
            {
                isGrounded = true;
            }
        }
    }
}
