using UnityEngine;
using System.Collections;

public class WaterDrift : MonoBehaviour {

	public Material waterMaterial;

	public bool shiftNormals = false;

	Vector2 offset = new Vector2(0f,0f);
	public Vector2 offsetSpeed =  new Vector2(0f,0.01f);

	// Use this for initialization
	void Start () {
		if (waterMaterial == null) {
			waterMaterial = this.GetComponent<MeshRenderer>().sharedMaterial;
		}
	}
	
	// Update is called once per frame
	void Update () {
		offset += offsetSpeed * 0.001f;

		if(!shiftNormals)
		waterMaterial.mainTextureOffset = offset;
		else
		waterMaterial.SetTextureOffset ("_NormalMap", offset);
	}
}
