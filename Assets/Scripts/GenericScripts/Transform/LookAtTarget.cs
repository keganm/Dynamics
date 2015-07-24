using UnityEngine;
using System.Collections;

public class LookAtTarget : MonoBehaviour {
	
	private Transform thisTransform;
	public Transform transform {
		get {
			if (thisTransform == null)
				thisTransform = base.transform;
			return thisTransform;
		}
	}
	
	public Transform targetTransform;

	private FindNextTarget thisNextTarget;
	public FindNextTarget nextTarget {
		get {
			if (thisNextTarget == null)
				thisNextTarget = base.GetComponent<FindNextTarget> ();
			return thisNextTarget;
		}
	}

	public float speed = 0.1f;
	public float stability = 0.95f;
	public float shakeMagnitude = 0.1f;
	Vector3 shakinessVector;

	// Use this for initialization
	void Start () {
		targetTransform = nextTarget.Current ().transform;
		SetShakinessVector ();
	}
	
	// Update is called once per frame
	void Update () {
		if (targetTransform == null)
			targetTransform = nextTarget.Current ().transform;
		if (targetTransform != nextTarget.Current().transform)
			targetTransform = nextTarget.Current ().transform;
		if (targetTransform == null)
			return;

		if (Random.value > stability)
			SetShakinessVector ();

		Vector3 axis = (nextTarget.Current ().transform.position - transform.position + shakinessVector).normalized;
		transform.rotation = Quaternion.Lerp(transform.rotation,Quaternion.LookRotation (axis),speed * Time.deltaTime);

	}

	public void GetNextTargetTransform()
	{
		nextTarget.Next ();
		targetTransform = nextTarget.Current ().transform;
	}

	public void SetShakinessVector()
	{
		shakinessVector = Random.insideUnitSphere * shakeMagnitude;
	}
}
