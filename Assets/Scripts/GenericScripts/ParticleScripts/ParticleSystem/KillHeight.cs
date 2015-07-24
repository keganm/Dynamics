using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class KillHeight : MonoBehaviour {
	ParticleSystem partiSystem;
	ParticleSystem.Particle[] ps;
	
	public float killHeight = 0.05f;
	
	// Use this for initialization
	void Awake() {
		if (partiSystem == null)
			partiSystem = this.GetComponent<ParticleSystem> ();
		ps = new ParticleSystem.Particle[0];
		
	}
	
	void Start()
	{
		Awake ();
	}
	
	// Update is called once per frame
	void Update () {
		
		if (partiSystem == null || ps == null)
			return;
		
		if(ps.Length != partiSystem.maxParticles)
			ps = new ParticleSystem.Particle[partiSystem.maxParticles];
		
		int count = partiSystem.GetParticles (ps);

		
		//For forloop
		Vector3 prtclPos;
		float prtclLife;
		
		for (int i = 0; i < count; ++i) {
			if(ps [i].position.z > killHeight)
				ps[i].lifetime = 0f;
		}
		partiSystem.SetParticles(ps,count);
	}
}
