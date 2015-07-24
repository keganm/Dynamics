using UnityEngine;
using System.Collections;

public class FindNextTarget : MonoBehaviour {
	int currentCanIndex = 0;
	public bool wrap = false;

	GameObject currentCanTarget;
	[SerializeField]
	GameObject[] cans;

	// Use this for initialization
	void Start () {
		if (cans.Length > 0)
			currentCanTarget = cans [0];
		else
			currentCanTarget = null;
	}
	public GameObject Current()
	{
		if (currentCanTarget == null)
			currentCanTarget = cans [currentCanIndex];

		return currentCanTarget;
	}

	public int Next()
	{
		if (!HasNext () && !wrap)
			return cans.Length - 1;
			       
		currentCanIndex++;
		if (wrap && currentCanIndex >= cans.Length)
			currentCanIndex = 0;

		currentCanTarget = cans [currentCanIndex];
		return currentCanIndex;
	}

	public bool HasNext()
	{
		return currentCanIndex + 1 < cans.Length;
	}
}
