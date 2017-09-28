using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour
{

    public GameObject player;
    public Transform target;
    protected float fDistance = 1;
    protected float fSpeed = 1;
    private Vector3 currOffset;

    private void Start()
    {
        currOffset = transform.position - target.position;
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
        if (Input.GetKey(KeyCode.Period))
        {
            OrbitPlayer(true,true);
        }
        else if (Input.GetKey(KeyCode.E))
        {
            OrbitPlayer(false,true);
        }
        transform.position = target.position + currOffset;
        transform.position = target.position + 10 * new Vector3(10, 10, 0).normalized;
    }

    protected void OrbitPlayer(bool bLeft, bool vert=false)
    {
        float fOrbitCircumference = 2F * fDistance * Mathf.PI;
        float fDistanceRadians = (fSpeed / fOrbitCircumference) * 2 * Mathf.PI;
        Vector3 modVector = Vector3.up;
        if (vert)
        {
            modVector = Vector3.back * -1;
        }
        if (bLeft)
        {
            fDistanceRadians = fDistanceRadians * -1;
        }
        transform.RotateAround(target.position, modVector, fDistanceRadians);
        currOffset = transform.position - target.position;
    }
}