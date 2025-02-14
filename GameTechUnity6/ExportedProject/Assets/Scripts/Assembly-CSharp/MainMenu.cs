using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UIElements;

public class MainMenu : MonoBehaviour
{
	[SerializeField]
	private UIDocument mainMenuDocument;

	private Button settingsbutton;

	private Button startbutton;

	[SerializeField]
	private MusicController musicController;

	private void Awake()
	{
		VisualElement rootVisualElement = mainMenuDocument.rootVisualElement;
		settingsbutton = rootVisualElement.Q<Button>("Settings");
		startbutton = rootVisualElement.Q<Button>("Start");
		settingsbutton.clicked += ShowSettingsMenu;
		startbutton.clicked += PlayGame;
	}

	private void ShowSettingsMenu()
	{
		musicController.ToggleMusic();
		Debug.Log("Toggled music");
	}

	private void PlayGame()
	{
		SceneManager.LoadScene("SampleScene");
	}
}
