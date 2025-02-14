using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneNavigation : MonoBehaviour
{
	public void LoadScene(string sceneName)
	{
		SceneManager.LoadScene(sceneName);
	}

	public void BackToMainMenu()
	{
		SceneManager.LoadScene("SampleScene");
	}
}
