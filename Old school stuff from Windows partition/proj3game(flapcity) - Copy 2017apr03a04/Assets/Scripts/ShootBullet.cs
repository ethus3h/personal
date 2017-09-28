using UnityEngine;

public class ShootBullet : MonoBehaviour
{
    public float shotspeed;
    public GameObject bullet;
    // based on https://pastebin.com/mgN2wuq7
    void Update()
    {
        if (Input.GetButton("Fire3"))
        {
            GameObject temp;
            temp = Instantiate(bullet, transform.position, transform.rotation) as GameObject;
            Rigidbody rb;
            rb = temp.GetComponent<Rigidbody>();
            rb.AddForce(transform.forward * shotspeed);
            Destroy(temp, 10.0f);
        }
    }
}