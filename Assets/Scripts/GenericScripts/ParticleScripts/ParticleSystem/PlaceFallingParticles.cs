using UnityEngine;
using System.Collections;

public class PlaceFallingParticles : MonoBehaviour {

	[SerializeField] protected Transform[] peakSystems;
	[SerializeField] protected Transform[] midSystems;
	Vector3 peakTarget = Vector3.zero;
	Vector3 peakCurrent = Vector3.zero;
	Vector3 midTarget = Vector3.zero;
	Vector3 midCurrent = Vector3.zero;
	public float smoothness = 0.01f;

	void Update()
	{
		peakCurrent = Vector3.Lerp (peakCurrent, peakTarget, smoothness);
		for (int i = 0; i < peakSystems.Length; ++i) {
			peakSystems [i].transform.localPosition = peakCurrent;
		}
		
		midCurrent = Vector3.Lerp (midCurrent, midTarget, smoothness);
		for (int i = 0; i < midSystems.Length; ++i) {
			midSystems [i].transform.localPosition = midCurrent;
		}
	}

	public void SetPeakPosition(Vector3 pos)
	{
		peakTarget = pos;
	}

	public void SetMidPosition(Vector3 pos)
	{
		midTarget = pos;
	}
}
