using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UIElements;

public class ReturnToMainScene : MonoBehaviour
{
	[SerializeField]
	private UIDocument uiDocument;

	private void OnEnable()
	{
		Button button = uiDocument.rootVisualElement.Q<Button>("backButton");
		if (button != null)
		{
			button.clicked += BackToMainScene;
		}
		else
		{
			Debug.LogWarning("BackButton not found in UXML!");
		}
	}

	private void BackToMainScene()
	{
		Debug.Log("Returning to main scene...");
		SceneManager.LoadScene("SampleScene");
	}
}
