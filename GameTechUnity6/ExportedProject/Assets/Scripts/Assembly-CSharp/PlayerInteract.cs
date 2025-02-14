using TMPro;
using UnityEngine;

public class PlayerInteract : MonoBehaviour
{
	public Camera PlayerCamera;

	public float InteractionDistance = 3f;

	public GameObject interactionText;

	private ObjectInteract currentInteractable;

	private void Update()
	{
		if (Physics.Raycast(PlayerCamera.ScreenPointToRay(new Vector3(Screen.width / 2, Screen.height / 2, 0f)), out var hitInfo, InteractionDistance))
		{
			ObjectInteract component = hitInfo.collider.GetComponent<ObjectInteract>();
			if (component != null && component != currentInteractable)
			{
				currentInteractable = component;
				if (interactionText != null)
				{
					interactionText.SetActive(value: true);
					TextMeshProUGUI component2 = interactionText.GetComponent<TextMeshProUGUI>();
					if (component2 != null)
					{
						component2.text = currentInteractable.GetInteractionText();
					}
				}
			}
		}
		else
		{
			currentInteractable = null;
			if (interactionText != null)
			{
				interactionText.SetActive(value: false);
			}
		}
		if (Input.GetKeyDown(KeyCode.E) && currentInteractable != null)
		{
			currentInteractable.Interact();
		}
	}
}
