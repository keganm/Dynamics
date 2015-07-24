//#define TESTCOLORS

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class ParticleBin : MonoBehaviour {

	//TODO:Shift to a weighted binning (Histogram?)
	[System.Serializable]
	public struct Bin
	{
		public int particleCount;
		public int[] particles;
#if TESTCOLORS
		public Color color; //For Testing
#endif
	}

	public int binXResolution = 10,binYResolution = 10,binZResolution = 10;
	[SerializeField]
	protected Bin[][][] bins;
	
	ParticleSystem partiSystem;
	ParticleSystem.Particle[] ps;
	Vector3[] particlePositions;
	Color[] colors;

	public float particleRadius = 0.1f;
	public float particlePush = 1f;
	public float particleJitter = 0f;

	public int resolution = 2;

	void Awake()
	{
		if (partiSystem == null)
			partiSystem = this.GetComponent<ParticleSystem> ();
		ps = new ParticleSystem.Particle[0];
		particlePositions = new Vector3[0];

		bins = new Bin[binXResolution][][];
		for(int i = 0; i < binXResolution; ++i){
			bins[i] = new Bin[binYResolution][];
			for(int j = 0; j < binYResolution; ++j){
				bins[i][j] = new Bin[binZResolution];
				for(int k = 0; k < binZResolution; ++k){
#if TESTCOLORS
					bins[i][j][k].color  = new Color(Random.value,Random.value,Random.value); //TODO: Remove For build
#endif
				}
			}
		}
	}

	// Use this for initialization
	void Start () {
		Awake ();
	}
	
	// Update is called once per frame
	void LateUpdate () {
		
		if (partiSystem == null || ps == null)
			return;
		
		if(ps.Length != partiSystem.maxParticles)
			ps = new ParticleSystem.Particle[partiSystem.maxParticles];
		
		if(particlePositions.Length != partiSystem.maxParticles)
			particlePositions = new Vector3[partiSystem.maxParticles];
		
		int count = partiSystem.GetParticles (ps);


		///////////// Clear or create particles in each bin
		for(int k = 0; k < binZResolution; ++k){
			for(int j = 0; j < binYResolution; ++j){
				for(int i = 0; i < binXResolution; ++i){
					if(bins[i][j][k].particles == null)
						bins[i][j][k].particles = new int[partiSystem.maxParticles];
					
					bins[i][j][k].particleCount = 0;
				}
			}
		}

		Vector3 prtclPos;
		Vector3 prtclMin = Vector3.zero;
		Vector3 prtclMax = Vector3.zero;
		for (int p = 0; p < count; ++p) {
			particlePositions [p] = ps [p].position;
			prtclPos = particlePositions [p];
			
			if (prtclPos.x < prtclMin.x)
				prtclMin.x = prtclPos.x;
			else if (prtclPos.x > prtclMax.x)
				prtclMax.x = prtclPos.x;
			
			if (prtclPos.y < prtclMin.y)
				prtclMin.y = prtclPos.y;
			else if (prtclPos.y > prtclMax.y)
				prtclMax.y = prtclPos.y;
			
			if (prtclPos.z < prtclMin.z)
				prtclMin.z = prtclPos.z;
			else if (prtclPos.z > prtclMax.z)
				prtclMax.z = prtclPos.z;
		}

		float xMin = prtclMin.x;
		float yMin = prtclMin.y;
		float zMin = prtclMin.z;

		float xsize = (prtclMax.x - xMin)/binXResolution;
		float ysize = (prtclMax.y - yMin)/binYResolution;
		float zsize = (prtclMax.z - zMin)/binZResolution;


		Bin bin;
		int xres = binXResolution - 1;
		int yres = binYResolution - 1;
		int zres = binZResolution - 1;
		for (int p = 0; p < count; ++p) {
			
			prtclPos = particlePositions [p];

			int x = (int)Math.Floor((prtclPos.x -xMin) / xsize);
			if(x<0)x = 0; else if(x > xres)x = xres;
			int y = (int)Math.Floor((prtclPos.y -yMin) / ysize);
			if(y<0)y = 0; else if(y > yres)y = yres;
			int z = (int)Math.Floor((prtclPos.z -zMin) / zsize);
			if(z<0)z = 0; else if(z > zres)z = zres;

			bin = bins[x][y][z];

			bin.particles[bin.particleCount] = p;
			bin.particleCount++;
			
#if TESTCOLORS
			ps[p].color = bin.color;
#endif
			bins[x][y][z] = bin;
		}


		//TODO: Integrate bin force? cohesion force? (based on particleCount)
		
		//For forloop
		Vector3 offset;
		float dist;
		Vector3 prtclVel;
		Vector3 lclFrcPos;
		float sqMag;
		Vector3 jitter = UnityEngine.Random.insideUnitSphere * particleJitter;
		float sqRad = particleRadius * particleRadius;
		
		
		///////////// Collision Test Particles in bins
		for(int k = 0; k < binZResolution; ++k){
			for(int j = 0; j < binYResolution; ++j){
				for(int i = 0; i < binXResolution; ++i){
					bin = bins[i][j][k];
					for(int p1 = 0; p1 < bin.particleCount; ++p1)
					{
						int indx = bin.particles[p1];

						prtclPos = particlePositions[indx];
						prtclVel = ps[indx].velocity;

						//Only test the particles that haven't been tested
						for (int p2 = p1+1; p2 <  bin.particleCount; p2 += resolution) {
							lclFrcPos = particlePositions[bin.particles[p2]];
							
								offset = lclFrcPos - prtclPos;
								
								sqMag = offset.sqrMagnitude;
								if (sqMag <= sqRad) {
									prtclVel -= offset * particlePush;
									if(particleJitter != 0f)
										prtclVel += jitter;
									ps[p1].angularVelocity = 0f;
									
								}
						}
						ps [indx].velocity = prtclVel;
					}

				}
			}
		}

		partiSystem.SetParticles(ps,count);
	}
}

