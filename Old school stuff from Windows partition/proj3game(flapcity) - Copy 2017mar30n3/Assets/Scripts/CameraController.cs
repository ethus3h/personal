using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour
{

    public GameObject player;
    protected float fDistance = 1;
    protected float fSpeed = 1;


    private Vector3 offset;

    void Start()
    {
        offset = transform.position - player.transform.position;
    }
    private void Update()
    {
        if (Input.GetKey(KeyCode.O))
        {
            OrbitPlayer(true);
        }
        else if (Input.GetKey(KeyCode.U))
        {
            OrbitPlayer(false);
        }
        // transform.LookAt(player.transform.position);
        transform.position = player.transform.position + offset;
    }

    void LateUpdate()
    {
        transform.position = player.transform.position + offset;
    }

    protected void OrbitPlayer(bool bLeft)
    {
        float step = fSpeed * Time.deltaTime;
        float fOrbitCircumference = 2F * fDistance * Mathf.PI;
        float fDistanceDegrees = (fSpeed / fOrbitCircumference) * 360;
        float fDistanceRadians = (fSpeed / fOrbitCircumference) * 2 * Mathf.PI;
        if (bLeft)
        {
            transform.RotateAround(player.transform.position, Vector3.up, -fDistanceRadians);
        }
        else
        { 
            transform.RotateAround(player.transform.position, Vector3.up, fDistanceRadians);
        }
    }
}