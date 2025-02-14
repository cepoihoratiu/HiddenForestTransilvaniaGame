using UnityEngine;

public class MusicController : MonoBehaviour
{
	private AudioSource audioSource;

	private static MusicController instance;

	private void Awake()
	{
		if (instance == null)
		{
			instance = this;
			Object.DontDestroyOnLoad(base.gameObject);
			audioSource = GetComponent<AudioSource>();
		}
		else
		{
			Object.Destroy(base.gameObject);
		}
	}

	public void ToggleMusic()
	{
		if (audioSource.isPlaying)
		{
			audioSource.Pause();
		}
		else
		{
			audioSource.Play();
		}
	}

	public bool IsMusicPlaying()
	{
		return audioSource.isPlaying;
	}
}
