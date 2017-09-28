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

    void LateUpdate()
    {
        transform.position = player.transform.position + offset;
    }

    protected void OrbitPlayer(bool bLeft)
    {
        float step = fSpeed * Time.deltaTime;
        float fOrbitCircumfrance = 2F * fDistance * Mathf.PI;
        float fDistanceDegrees = (fSpeed / fOrbitCircumfrance) * 360;
        float fDistanceRadians = (fSpeed / fOrbitCircumfrance) * 2 * Mathf.PI;
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