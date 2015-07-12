using UnityEngine;
using System.Collections;
using System.Linq;

[ExecuteInEditMode]
public class ParticleWind : MonoBehaviour {
	[SerializeField] public LocalForce[] localForces;

	PlaceFallingParticles placeFallingParticles;
	ParticleSystem partiSystem;
	ParticleSystem.Particle[] ps;

	public bool getParentTarget = false;
	public ParticleWind parentWind;

	public float uniqueWeight = 1.0f;

	public float windSmoothness = 0.1f;
	public Vector3 windStrength = new Vector3(1.0f,1.0f,1.0f);
	public float windRandomness = 0.1f;
	public Vector3 wind = Vector3.zero;
	public Vector3 windTarget = Vector3.zero;
	private float windTime = 0f;

	public float windStartHeight= 0f;

	public bool setPeakPoint = false;
	public Vector3 peakPoint = Vector3.zero;
	public Vector3 midPoint = Vector3.zero;

	// Use this for initialization
	void Awake () {
		if (partiSystem == null)
			partiSystem = this.GetComponent<ParticleSystem> ();
		if (placeFallingParticles == null)
			placeFallingParticles = this.GetComponent<PlaceFallingParticles> ();
		if (placeFallingParticles != null)
			setPeakPoint = true;

		if (getParentTarget) {
			parentWind = this.transform.parent.GetComponentInParent<ParticleWind>();
		}
		if (parentWind == null) {
			getParentTarget = false;
		}

		ps = new ParticleSystem.Particle[0];

		windTarget = Random.insideUnitSphere;
		windTarget.Scale (windStrength);
		wind = windTarget;
	}

	void Start()
	{
		Awake ();
	}
	
	// Update is called once per frame


	void Update () {
		UpdateWind ();


		
		if (partiSystem == null || ps == null)
			return;

		midPoint = Vector3.zero;

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
			prtclVel = ps [i].velocity;
			prtclPos = ps [i].position;

			if (prtclPos.y > windStartHeight) {

				prtclVel += wind * uniqueWeight;

				//Position Tracking for peak and mid positions
				if (setPeakPoint){
					if (prtclPos.z > peakPoint.y) {
						peakPoint.x = prtclPos.x;
						peakPoint.y = prtclPos.z;
						peakPoint.z = prtclPos.y;
					}

					midPoint.x += prtclPos.x;
					midPoint.y += prtclPos.z;
					midPoint.z += prtclPos.y;
				}


			

				for (int j = 0; j < localForces.Length; j++) {
					lclFrcPos = localForces [j].position;
					lclFrcRad = localForces [j].Radius;

					offset = lclFrcPos - prtclPos;
					sqRad = lclFrcRad * lclFrcRad;

					sqMag = offset.sqrMagnitude;
					if (sqMag < sqRad) {
						dist = 1f / (sqRad - sqMag);
						prtclVel += ((lclFrcPos - prtclPos) * dist) * localForces [j].Strength;
					}

				}




				ps [i].velocity = prtclVel;
			}
		}
		partiSystem.SetParticles(ps,count);


		if (setPeakPoint) {

			midPoint *= (1.0f / (float)count);
			placeFallingParticles.SetPeakPosition (peakPoint);
			placeFallingParticles.SetMidPosition(midPoint);
		}
		//peakPoint = Vector3.zero;
		//ps = null;
	}

	public void UpdateWind()
	{
		if (getParentTarget && parentWind != null) {
			wind = parentWind.wind;
			localForces = parentWind.localForces;
			windStartHeight = parentWind.windStartHeight;
			return;
		}

		windTime += Time.deltaTime;

		if (windTime > windRandomness) {
			windTarget = Random.insideUnitSphere;
			windTarget.Scale (windStrength);
			windTime = 0f;
		}
		wind = Vector3.Lerp (wind, windTarget, windSmoothness);
	}
}
