using UnityEngine;

public class Pause : MonoBehaviour
{
    public GameObject Pausepanel;
    private bool paused;
    // based on http://answers.unity3d.com/questions/1230216/a-proper-way-to-pause-a-game.html
    void Start()
    {
        Pausepanel.SetActive(false);
        paused = false;
    }
    void Update()
    {
        Debug.Log("paused");
        if (Input.GetButton("TogglePaused"))
        {
            if (!paused)
            {
                Debug.Log("paused");
                PauseGame();
            }
            else
            {
                Debug.Log("resumed");
                ContinueGame();
            }
        }
    }
    private void PauseGame()
    {
        Time.timeScale = 0;
        paused = true;
        Pausepanel.SetActive(true);
        //Disable scripts that still work while timescale is set to 0
    }
    private void ContinueGame()
    {
        Time.timeScale = 1;
        paused = false;
        Pausepanel.SetActive(false);
        //enable the scripts again
    }
}