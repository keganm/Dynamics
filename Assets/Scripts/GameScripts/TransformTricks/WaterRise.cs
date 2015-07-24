using UnityEngine;
using System.Collections;

public class WaterRise : MonoBehaviour {
	protected Transform myTransform;
	public Transform transform {
		get {
			if (myTransform == null)
				myTransform = base.transform;
			return myTransform;
		}
	}
	float height = 0f;
	public float maxHeight = 2f;
	public float heightSpeed = 0.01f; 
	Vector3 setScale = new Vector3(1,1,1);
	// Use this for initialization
	void Start () {
		setScale = transform.localScale;
		height = setScale.y;
	}
	
	// Update is called once per frame
	void Update () {
		if (height >= maxHeight)
			return;
		height += heightSpeed;
		setScale.y = height;
		transform.localScale = setScale;
	}
}
