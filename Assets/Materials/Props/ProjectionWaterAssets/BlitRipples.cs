using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BlitRipples : MonoBehaviour {
	struct Ripple{
		public Vector4 positionScale;
		public float scaleSpeed;
		public float rippleStrength;
	}

	public RenderTexture rippleOutput;

	public MeshRenderer thisRippleRenderer;
	public Renderer rippleRenderer {
		get {
			if (thisRippleRenderer == null)
				thisRippleRenderer = this.GetComponent<MeshRenderer> ();
			return thisRippleRenderer;
		}
	}
	public Material mat;
	Texture rippleTexture;

	List<Ripple> ripples = new List<Ripple>();

	public float strengthDecay = 0.99f;
	public int rippleCount;

	public float growRate = 0.1f;
	public float growSize = 15f;

	public Vector2 rippleScale = new Vector2(-1f,1f);
	public Vector2 rippleOffset = new Vector2(0f,0f);


	void Start () {

	}


	void Update() {
		for (int i = 0; i < ripples.Count; i++) {
			Ripple tmp = ripples[i];
			tmp.positionScale.z *= tmp.scaleSpeed;
			tmp.positionScale.w *= tmp.scaleSpeed;
			tmp.rippleStrength *= strengthDecay;
			
			if(ripples[i].rippleStrength <= 0.1f)
			{
				ripples.Remove(ripples[i]);
			}else{
				ripples[i] = tmp;
			}
		}


		RenderTexture tmpTexture = new RenderTexture (rippleOutput.width, rippleOutput.height, rippleOutput.depth);

		Graphics.SetRenderTarget(rippleOutput);
		if (ripples.Count == 0) {
			Graphics.Blit(rippleOutput,rippleOutput,rippleRenderer.sharedMaterial,0);
		}
		//Graphics.Blit(rippleOutput,rippleOutput,renderer.sharedMaterial,1);

		//TODO: Push this over to computeshader to remove blit calls
		rippleRenderer.sharedMaterial.SetFloat("_Width", 128);
		rippleRenderer.sharedMaterial.SetFloat("_Height", 128);
		for (int i = 0; i < ripples.Count; ++i) {

			rippleRenderer.sharedMaterial.SetVector("_BaseRipplePosition", ripples[i].positionScale);
			rippleRenderer.sharedMaterial.SetFloat("_BaseRippleStrength", ripples[i].rippleStrength);

			Graphics.Blit(rippleOutput,rippleOutput,rippleRenderer.sharedMaterial,1);
		}


		tmpTexture.Release ();
	}

	public void AddRipple(Vector3 pos)
	{
		if(ripples.Count < rippleCount){
			Ripple ripple = new Ripple();
			ripple.positionScale = new Vector4(((pos.x + rippleOffset.x)/rippleScale.x)+.5f,
			                                   ((pos.z+rippleOffset.y)/rippleScale.y)+.5f,
			                                   growSize,growSize);
			ripple.scaleSpeed = (growRate * 0.99f) + ((Random.value * growRate) * 0.01f);
			ripple.rippleStrength = Random.value * 0.95f + 0.05f;

			ripples.Add(ripple);
		}
	}
}
