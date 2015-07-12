using UnityEngine;
using System.Collections;

[System.Serializable]
public class LocalForce : MonoBehaviour {

		public Vector3 position;
		
		public float[] radii;
		private float radius;
		public float Radius
		{
			get{ return radius;}
		}
		
		public float[] strengths;
		private float strength;
		public float Strength
		{
			get{ return strength;}
		}
		
		public float timeLength;
		
		public float time = 0f;

		Transform mTransform;
		private new Transform transform {
		get {
			if (mTransform == null)
				mTransform = base.transform;
			return mTransform;
			}
		}
		
		
		void Update()
		{
			position = transform.position;
			time += Time.deltaTime;
			if (time > timeLength)
				time = 0f;
			
			int strt, end;
			float rmdr;
			if (StartEndDiff (time, timeLength, radii.Length, out strt, out end, out rmdr))
				radius = Mathf.Lerp (radii [strt], radii [end], rmdr);
			else
				radius = 1f;
			
			
			if (StartEndDiff (time, timeLength, strengths.Length, out strt, out end, out rmdr))
				strength = Mathf.Lerp (strengths [strt], strengths [end], rmdr);
			else
				strength = 1f;
		}
		
		private bool StartEndDiff(float _time, float _length, int _count,out int _s, out int _e, out float _l)
		{
			float t = (_time / _length) * _count;
			
			_s = Mathf.FloorToInt (t);
			_e = _s + 1;
			if (_e >= _count)
				_e = 0;
			_l = t - (float)_s;
			
			return true;
		}
	}