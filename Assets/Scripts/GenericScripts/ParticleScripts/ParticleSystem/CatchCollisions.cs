using UnityEngine;
using System.Collections;

public class CatchCollisions : MonoBehaviour {

	ParticleSystem partiSystem;
	public ParticleSystem particles {
		get {
			if (partiSystem == null)
				partiSystem = this.GetComponent<ParticleSystem> ();
			return partiSystem;
		}
	}

	public BlitRipples ripplePainter;

	public int maxParticleCollisions = 8;
	ParticleCollisionEvent[] collisionEvents;

	// Use this for initialization
	void Start () {
		collisionEvents = new ParticleCollisionEvent[maxParticleCollisions];
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnParticleCollision(GameObject other)
	{
		if (ripplePainter == null)
			return;

		if(collisionEvents.Length < maxParticleCollisions)
			collisionEvents = new ParticleCollisionEvent[maxParticleCollisions];

		int collisionCount = particles.GetCollisionEvents(other,collisionEvents);

		Vector3 pos;
		for (int i = 0; i < collisionCount && i < maxParticleCollisions; ++i) {
			if(other.layer == LayerMask.NameToLayer("Water"))
			{
				ripplePainter.AddRipple(collisionEvents[i].intersection);
			}
		}
	}
}
