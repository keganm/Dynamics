using UnityEngine;
using System.Collections;

public class ShotReaction : MonoBehaviour {
	struct ResetContainer{
		public Vector3 position;
		public Quaternion rotation;
		public Vector3 scale;
	}
	
	public float shotForce = 500;
	public int sparkCount = 100;
	public float leakCount = 300;

	Rigidbody thisRigidBody;
	public Rigidbody rigidBody {
		get {
			if (thisRigidBody == null) {
				thisRigidBody = this.GetComponent<Rigidbody> ();
				if(thisRigidBody == null)
					Debug.LogError("Rigid Body not found");
			}
			return thisRigidBody;
		}
	}

	public GameObject Sparks;
	public GameObject Leak;

	bool wasShot = false;

	Transform sparkPosition;
	ParticleSystem sparkParticles;
	Transform leakPosition;
	ParticleSystem leakParticles;

	ResetContainer resetTransform;


	// Use this for initialization
	void Start () {
		if(Sparks == null)
			Sparks = this.transform.FindChild ("Sparks").gameObject;
		sparkPosition = Sparks.transform;
		sparkParticles = Sparks.GetComponent<ParticleSystem> ();
		
		if(Leak == null)
			Leak = this.transform.FindChild ("Leak").gameObject;
		leakPosition = Leak.transform;
		leakParticles = Leak.GetComponent<ParticleSystem> ();
		
		resetTransform.position = transform.position;
		resetTransform.rotation = transform.rotation;
		resetTransform.scale = transform.localScale;
	}

	public void Reset()
	{
		if (rigidBody == null)
			return;
		wasShot = false;

		rigidBody.velocity *= 0f;
		rigidBody.angularVelocity *= 0f;
		
		transform.position = resetTransform.position;
		transform.rotation = resetTransform.rotation;
		transform.localScale = resetTransform.scale;
	}
	
	// Update is called once per frame
	void Update () {
		if (leakParticles.isStopped && wasShot)
			Reset ();

		if (leakParticles.time > 3f)
			leakParticles.emissionRate--;

	}

	public void GetShot(Vector3 hitPoint, Vector3 hitNormal)
	{
		if (rigidBody == null)
			return;

		wasShot = true;
		
		resetTransform.position = transform.position;
		resetTransform.rotation = transform.rotation;
		resetTransform.scale = transform.localScale;

		rigidBody.AddExplosionForce (shotForce, hitPoint, 2,-0.2f);

		if (sparkParticles != null) {
			sparkPosition.position = hitPoint;
			sparkParticles.Play ();
			sparkParticles.Emit (sparkCount);
		}

		if (leakParticles != null) {
			leakPosition.position = hitPoint;
			leakPosition.rotation = Quaternion.LookRotation(hitNormal,leakPosition.up);
			leakParticles.Play ();
			leakParticles.emissionRate = leakCount;
		}
	}
}
