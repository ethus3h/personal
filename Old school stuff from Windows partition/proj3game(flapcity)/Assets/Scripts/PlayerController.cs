using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerController : MonoBehaviour
{

    public float speed;
    private float ispeed;
    private Rigidbody rb;
    public GameObject pcamera;
    public GameObject scoreLabel;
    public GameObject startPad;
    public int score = 0;
    public int maxScore = 0;
    private float jumpCooldown = 0;
    public float threshold;
    private bool isGrounded;
    private bool useGravity = true;
    private bool useGravityCooldown = false;
    private bool pauseCooldown = false;
    private bool paused;
    private Color gameState;
    private int currentScene;

    void Start()
    {
        currentScene = SceneManager.GetActiveScene().buildIndex;
        score = 0;
        rb = GetComponent<Rigidbody>();
        ispeed = speed;
        scoreLabel.GetComponent<TextMesh>().text = "Finish on the far red pad.";
        Invoke("ScoreUpdate", 5);
        transform.position = new Vector3(startPad.transform.position.x, startPad.transform.position.y + 10, startPad.transform.position.z);
        paused = false;
    }

    void Update()
    {
        if (Input.GetButton("TogglePaused"))
        {
            if (!pauseCooldown)
            {
                if (!paused)
                {
                    gameState = scoreLabel.GetComponent<TextMesh>().color;
                    scoreLabel.GetComponent<TextMesh>().color = Color.gray;
                    PauseGame();
                }
                else
                {
                    ContinueGame();
                    scoreLabel.GetComponent<TextMesh>().color = gameState;
                }
                pauseCooldown = true;
            }
            else
            {
                pauseCooldown = false;
            }
        }
        if (jumpCooldown > 0)
        {
            jumpCooldown -= Time.deltaTime;
        }
        else
        {
            if (Input.GetButton("Jump") && isGrounded)
            {
                rb.AddForce(new Vector3(0.0f, 200.0f, 0.0f));
                jumpCooldown = 0.1f;
            }
        }
        if (Input.GetButton("Float"))
        {
            rb.AddForce(new Vector3(0.0f, 13.0f, 0.0f));
        }
        if (Input.GetButton("ToggleGravity"))
        {
            if (paused)
            {
                ContinueGame();
                scoreLabel.GetComponent<TextMesh>().color = gameState;
                reloadLevel();
            }
            else
            {
                if (!useGravityCooldown)
                {
                    if (useGravity)
                    {
                        useGravity = false;
                        rb.useGravity = false;
                        scoreLabel.GetComponent<TextMesh>().color = Color.cyan;
                        rb.AddForce(new Vector3(0.0f, 3.0f, 0.0f));
                    }
                    else
                    {
                        useGravity = true;
                        rb.useGravity = true;
                        scoreLabel.GetComponent<TextMesh>().color = Color.red;
                    }
                    useGravityCooldown = true;
                    Invoke("resetGravityCooldown", 0.1f);
                }
            }
        }
    }

    private void PauseGame()
    {
        paused = true;
        Time.timeScale = 0;
    }
    private void ContinueGame()
    {
        Time.timeScale = 1;
        paused = false;
    }

    void resetGravityCooldown()
    {
        useGravityCooldown = false;
    }

    void FixedUpdate()
    {
        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");
        Vector3 movement = new Vector3(moveHorizontal, 0.0f, moveVertical);
        movement = Camera.main.transform.TransformDirection(movement);
        if (useGravity)
        {
            movement = new Vector3(movement.x, 0f, movement.z);
        }
        if (Input.GetButton("Brake"))
        {
            speed = speed - 1;
            if (speed < 0)
            {
                speed = 0;
            }
            rb.drag = rb.drag + 0.3f;
        }
        if (!Input.GetButton("Brake"))
        {
            if (speed < ispeed)
            {
                speed = ispeed;
            }
            if (rb.drag > 0)
            {
                rb.drag = 0;
            }
        }
        float tSpeed = speed;
        if (Input.GetButton("Nitro"))
        {
            tSpeed = tSpeed * 8;
            GetComponent<ParticleSystem>().Play();
        }
        else
        {
            GetComponent<ParticleSystem>().Stop();
        }
        Debug.Log(tSpeed);
        rb.AddForce(movement * speed);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("PickUp"))
        {
            other.gameObject.SetActive(false);
            score = score + 1;
            ScoreUpdate();
        }
    }
    void ScoreUpdate()
    {
        scoreLabel.GetComponent<TextMesh>().text = "Score: " + score + " / " + maxScore;
    }
    private void OnCollisionEnter(Collision collision)
    {
        isGrounded = true;
        if (collision.collider.gameObject.CompareTag("FinishPad"))
        {
            //exit scene
            if (score >= maxScore)
            {
                scoreLabel.GetComponent<TextMesh>().text = "Level won";
                Invoke("loadNextLevel", 2);
            }
            else
            {
                scoreLabel.GetComponent<TextMesh>().text = "Find all collectibles before winning!";
                Invoke("ScoreUpdate", 2);
            }
        }
        else if (collision.collider.gameObject.CompareTag("OobTrigger"))
        {
            if (useGravity)
            {
                scoreLabel.GetComponent<TextMesh>().text = "You died!";
                Invoke("reloadLevel", 2);
            }
        }
    }
    private void loadNextLevel()
    {
        SceneManager.LoadScene(currentScene + 1);
    }
    private void reloadLevel()
    {
        SceneManager.LoadScene(currentScene);
    }
    private void OnCollisionExit(Collision collision)
    {
        isGrounded = false;
    }
}
