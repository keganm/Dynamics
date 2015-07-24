using UnityEngine;
using System.Collections;

//[ExecuteInEditMode]
public class ParticleSelfCollide : MonoBehaviour {
	[SerializeField] public LocalForce[] localForces;
	
	PlaceFallingParticles placeFallingParticles;
	ParticleSystem partiSystem;
	ParticleSystem.Particle[] ps;

	public float particleRadius = 0.05f;
	public float startCollisionHeight = 0.1f;
	public float particleSet = 0.1f;
	public float particlePush = 1f;

	public int testResolution = 1;

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
		Vector3 offset;
		float sqRad,dist;
		Vector3 prtclVel, prtclPos;
		Vector3 lclFrcPos;
		float lclFrcRad;
		float sqMag;
		
		for (int i = 0; i < count; ++i) {
			prtclPos = ps [i].position;
			if(prtclPos.z > startCollisionHeight){
			prtclVel = ps [i].velocity;
				for (int j = 0; j < ps.Length; j += testResolution) {
					if(i != j){
						lclFrcPos = ps [j].position;
						lclFrcRad = particleRadius;
						
						offset = lclFrcPos - prtclPos;
						sqRad = lclFrcRad * lclFrcRad;
						
						sqMag = offset.sqrMagnitude;
						if (sqMag <= sqRad) {
							prtclPos -= offset * particleSet;
							prtclVel -= offset * particlePush;
							ps[i].angularVelocity = 0f;

							//TODO: Integrate wrap back to test j->j+testResolution ?
						}
					}
					
				}
				ps [i].position = prtclPos;
				ps [i].velocity = prtclVel;
			}

		}
		partiSystem.SetParticles(ps,count);
	}

	void OnParticleCollision(GameObject other) {
		Debug.Log ("Collision");
	}
}
