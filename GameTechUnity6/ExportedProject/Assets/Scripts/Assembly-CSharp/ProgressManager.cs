using UnityEngine;
using UnityEngine.SceneManagement;

public class ProgressManager : MonoBehaviour
{
	public static ProgressManager Instance;

	private float progress;

	private void Awake()
	{
		if (Instance == null)
		{
			Instance = this;
			Object.DontDestroyOnLoad(base.gameObject);
		}
		else
		{
			Object.Destroy(base.gameObject);
		}
	}

	public void IncreaseProgress(float amount)
	{
		progress += amount;
		Debug.Log($"Progress updated: {progress}%");
		if (progress >= 110f)
		{
			Debug.Log("Congratulations! You have completed the game.");
			EndGame();
		}
	}

	public float GetProgress()
	{
		return progress;
	}

	private void EndGame()
	{
		Debug.Log("Game Over! Progress is 100%.");
		SceneManager.LoadScene("EndScene");
	}
}
