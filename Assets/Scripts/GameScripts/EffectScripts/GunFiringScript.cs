using UnityEngine;
using System.Collections;

public class GunFiringScript : MonoBehaviour {
	public MeshRenderer muzzleFlashMesh;
	public ParticleSystem muzzleFlashParticles01;
	public ParticleSystem muzzleFlashParticles02;
	public ParticleSystem muzzlePuffParticles;
	public ParticleSystem muzzleSlowSmoke;
	public Light muzzleLight01;
	public Light muzzleLight02;
	
	public float muzzleEmission = 100;
	public float muzzleEmissionLoss = 0.8f;
	public float muzzlePuff = 500;
	public float muzzlePuffLoss = .9f;
	public float slowSmokeEmission = 100;
	public float slowSmokeEmissionLoss = 0.99f;
	public float muzzleLight = 10f;
	public float muzzleLightLoss = 0.8f;
	
	public float lossTime = 0f;

	private Transform thisTransform;
	private Quaternion returnRotation;
	public Transform transform {
		get {
			if (thisTransform == null)
				thisTransform = base.transform;
			return thisTransform;
		}
	}

	private float fireTime = 0f;
	public float fireTimer = 3f;

	private int shotAttempts = 0;
	public int chancesToHit = 4;

	public bool fireOnTimer = false;

	public bool isFiring = false;
	public bool wasHit = false;

	private LookAtTarget thisLookAtTarget;
	public LookAtTarget lookAtTarget {
		get {
			if (thisLookAtTarget == null)
				thisLookAtTarget = base.GetComponent<LookAtTarget> ();
			return thisLookAtTarget;
		}
	}
	
	private FindNextTarget thisNextTarget;
	public FindNextTarget nextTarget {
		get {
			if (thisNextTarget == null)
				thisNextTarget = base.GetComponent<FindNextTarget> ();
			return thisNextTarget;
		}
	}

	// Use this for initialization
	void Start () {
	}

	void Update () {
		float td = Time.deltaTime;
		fireTime += td;
		if (fireTime > fireTimer) {
			FireGun();
			fireTime = 0f;
		}

		lossTime += Time.deltaTime;
		float loss = muzzleEmissionLoss * lossTime;
		muzzleFlashParticles01.emissionRate = Mathf.Lerp (muzzleEmission, 0f, loss);
		muzzleFlashParticles02.emissionRate = Mathf.Lerp (muzzleEmission, 0f, loss);

		loss = muzzlePuffLoss * lossTime;
		muzzleFlashParticles02.emissionRate = Mathf.Lerp (muzzlePuffLoss, 0f, loss);
		
		loss = slowSmokeEmissionLoss * lossTime;
		muzzleSlowSmoke.emissionRate = Mathf.Lerp (slowSmokeEmission, 0f, loss);
		
		loss = muzzleLightLoss * lossTime;
		muzzleLight01.intensity = Mathf.Lerp (muzzleLight, 0f, loss);
		muzzleLight02.intensity = Mathf.Lerp (muzzleLight, 0f, loss);

		if (isFiring) {
			if(muzzleFlashParticles01.isStopped && wasHit){
				isFiring = false;
				wasHit = false;
				nextTarget.Next();
			}
		}
	}

	public void FireGun()
	{
		if (isFiring)
			return;

		muzzleFlashParticles01.Emit ((int)muzzleEmission);
		muzzleFlashParticles02.Emit ((int)muzzleEmission);
		muzzleFlashParticles01.emissionRate = muzzleEmission;
		muzzleFlashParticles02.emissionRate = muzzleEmission;
		
		muzzlePuffParticles.Emit (10);
		muzzlePuffParticles.emissionRate = muzzlePuff;
		muzzleSlowSmoke.emissionRate = slowSmokeEmission;

		muzzleLight01.intensity = muzzleLight;
		muzzleLight02.intensity = muzzleLight;

		lossTime = 0f;
		
		ShootCan();
		returnRotation = transform.rotation;
		transform.Rotate (-25, 0, 0);
	}

	public void ShootCan()
	{
		wasHit = false;
		RaycastHit hit;
		LayerMask layerMask = ~(1 << LayerMask.NameToLayer ("Ignore Raycast"));
		if (Physics.Raycast (transform.position, this.transform.forward, out hit,200,layerMask)) {
			GameObject can = nextTarget.Current();
			if(hit.collider.gameObject.GetInstanceID() == can.GetInstanceID()){
				ShotReaction sr = can.GetComponent<ShotReaction>();


				if(sr == null)
					sr = can.AddComponent<ShotReaction>();
				sr.GetShot(hit.point,hit.normal);

				wasHit = true;
				isFiring = true;
				shotAttempts = 0;
			}
		}

		if(!wasHit)
		{
			shotAttempts++;
			if(shotAttempts > chancesToHit){
				shotAttempts = 0;
				nextTarget.Next();
			}
		}
	}
}
