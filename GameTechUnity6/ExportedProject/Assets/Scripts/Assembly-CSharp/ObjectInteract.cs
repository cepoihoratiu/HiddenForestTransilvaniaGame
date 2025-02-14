using UnityEngine;
using UnityEngine.SceneManagement;

public class ObjectInteract : MonoBehaviour
{
	[Header("Interaction Settings")]
	public string interactionText = "Press E to Interact";

	public string sceneToLoad;

	public string GetInteractionText()
	{
		return interactionText;
	}

	public void Interact()
	{
		if (!string.IsNullOrEmpty(sceneToLoad))
		{
			Debug.Log("Loading scene: " + sceneToLoad);
			SceneManager.LoadScene(sceneToLoad, LoadSceneMode.Additive);
			if (ProgressManager.Instance != null)
			{
				ProgressManager.Instance.IncreaseProgress(20f);
			}
			else
			{
				Debug.LogWarning("ProgressManager.Instance is null!");
			}
		}
		else
		{
			Debug.LogWarning("Scene name is not set for this object!");
		}
	}

	private void OnTriggerStay(Collider other)
	{
		if (other.CompareTag("Player"))
		{
			Debug.Log("Press E to interact");
			if (Input.GetKeyDown(KeyCode.E))
			{
				Interact();
			}
		}
	}
}
