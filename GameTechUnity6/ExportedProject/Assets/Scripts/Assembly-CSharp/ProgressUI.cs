using TMPro;
using UnityEngine;

public class ProgressUI : MonoBehaviour
{
	[SerializeField]
	private TextMeshProUGUI progressText;

	private void Update()
	{
		if (ProgressManager.Instance != null)
		{
			progressText.text = $"Progress: {ProgressManager.Instance.GetProgress()}%";
		}
	}
}
