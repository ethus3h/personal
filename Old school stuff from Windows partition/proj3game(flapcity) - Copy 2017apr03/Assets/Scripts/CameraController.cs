using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour
{

    /*     public GameObject player;
        public Transform target;
        protected float fDistance = 1f;
        protected float fSpeed = 1;
        private Vector3 currOffset; */
    /* https://forum.unity3d.com/threads/solved-rotate-camera-around-player-using-non-parented-camera.331729/#post-2149708 */
    public float turnSpeed = 1f;
    public Transform player;

    private Vector3 offset;

    void Start()
    {
        // offset = new Vector3(player.position.x, player.position.y + 8.0f, player.position.z + 7.0f);
        offset = new Vector3(3f, 3f, 3f);
    }

    void LateUpdate()
    {
        transform.position = player.position + (offset * 2f);
        transform.LookAt(player.position);

        if (Input.GetKey(KeyCode.O))
        {
            CameraUpdate(-turnSpeed);
        }
        else if (Input.GetKey(KeyCode.U))
        {
            CameraUpdate(turnSpeed);
        }

        if (Input.GetKey(KeyCode.Period))
        {
            CameraUpdate(turnSpeed,true);
        }
        else if (Input.GetKey(KeyCode.E))
        {
            CameraUpdate(-turnSpeed,true);
        }
    }
    void CameraUpdate(float relativeSpeed, bool isVertical = false) {
        Vector3 axis;
        if(isVertical)
        {
            axis = Vector3.left;
        }
        else
        {
            axis = Vector3.up;
        }
        offset = Quaternion.AngleAxis(relativeSpeed, axis) * offset;
    }
    /*    private void Start()
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
            transform.position = target.position + 5 * new Vector3(3, 3, 0).normalized;
            transform.rotation = Quaternion.Euler(new Vector3(transform.rotation.eulerAngles.x, transform.rotation.eulerAngles.y, 0));
        }

    protected void OrbitPlayer(bool bLeft, bool vert=false)
    {
        // Vector3 pushPosition = transform.position;
        // transform.position = target.position;
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
        // transform.position = pushPosition;
    } */
}