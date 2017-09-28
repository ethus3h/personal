using UnityEngine;

public class CameraController : MonoBehaviour
{

    public float turnSpeed = 0.1f;
    public Transform player;
    private Vector3 offset;
    private Vector3 prepOffset;
    private float yDelta = 0;

    void Start()
    {
        offset = new Vector3(5f, 5f, 5f);
    }

    void LateUpdate()
    {
        if (yDelta > 1.3f)
        {
            yDelta = 1.3f;
        }
        if (yDelta < -7.2f)
        {
            yDelta = -7.2f;
        }
        prepOffset = offset;
        prepOffset.y = prepOffset.y + yDelta;
        transform.position = player.position + (prepOffset * 2f);
        float positionMod = (float)System.Math.Pow(System.Math.Abs(yDelta + 3), 1.7);
        // from http://answers.unity3d.com/questions/8003/how-can-i-know-if-a-gameobject-is-seen-by-a-partic.html
        Plane[] planes = GeometryUtility.CalculateFrustumPlanes(this.GetComponent<Camera>());
        int i = 0;
        while ( (! GeometryUtility.TestPlanesAABB(planes, player.GetComponent<Collider>().bounds)) && ( i < 10 ) )
        {
            // Camera cannot see player, so try to find a spot where it can
            transform.position = Vector3.MoveTowards(transform.position, player.position, 0.3f);
            i = i + 1;
        }
        // Debug.Log(yDelta);
        // Debug.Log(positionMod);
        transform.position = new Vector3(Vector3.MoveTowards(transform.position, player.position, positionMod).x, transform.position.y, Vector3.MoveTowards(transform.position, player.position, positionMod).z);
        transform.LookAt(player.position);
        if (Input.GetButton("HorizCamN"))
        {
            CameraUpdate(-turnSpeed);
        }
        else if (Input.GetButton("HorizCamP"))
        {
            CameraUpdate(turnSpeed);
        }
        if (Input.GetButton("VertCamN"))
        {
            if (yDelta < 3)
            {
                yDelta = yDelta + 0.1f;
            }
        }
        else if (Input.GetButton("VertCamP"))
        {
            if (yDelta > -12)
            {
                yDelta = yDelta - 0.1f;
            }
        }
        if(Input.GetButton("CamZoomIn"))
        {
            offset = offset * 1.1f;
        }
        else if (Input.GetButton("CamZoomOut"))
        {
            offset = offset / 1.1f;
        }
    }
    void CameraUpdate(float relativeSpeed)
    {
        offset = Quaternion.AngleAxis(relativeSpeed, Vector3.up) * offset;
    }
}