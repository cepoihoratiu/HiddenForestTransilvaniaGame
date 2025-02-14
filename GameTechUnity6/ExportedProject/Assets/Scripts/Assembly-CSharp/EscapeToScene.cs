using UnityEngine;
using UnityEngine.SceneManagement;

public class EscapeToScene : MonoBehaviour
{
	private void Update()
	{
		if (!Input.GetKeyDown(KeyCode.Escape))
		{
			return;
		}
		for (int i = 0; i < SceneManager.sceneCount; i++)
		{
			Scene sceneAt = SceneManager.GetSceneAt(i);
			if (sceneAt.name != "SampleScene" && sceneAt.isLoaded)
			{
				Debug.Log("Unloading scene: " + sceneAt.name);
				SceneManager.UnloadSceneAsync(sceneAt);
				break;
			}
		}
	}
}
