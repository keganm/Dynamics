using UnityEngine;
using System.Collections;

public class ParamControl<T>
{
	enum ParamType{
		FloatType,
		Vector3Type
	}

	T min,max,current;
	ParamType pType;

	public ParamControl(T min, T max, T current)
	{
		this.min = min;
		this.max = max;
		this.current = current;

		if (typeof(T).Equals(typeof(float)))
			pType = ParamType.FloatType;
		if(typeof(T).Equals(typeof(Vector3)))
			pType = ParamType.Vector3Type;
	}

	public T UpdatePressure(float pressure)
	{
		if (pType == ParamType.FloatType) {
			current = (T)(object)Mathf.Lerp((float)(object)min,(float)(object)max,pressure);
			return current;
		}

		if (pType == ParamType.Vector3Type) {
			current = (T)(object)Vector3.Lerp((Vector3)(object)min,(Vector3)(object)max,pressure);
			return current;
		}
		
		return default(T);
	}
}

public class AnimationControl : MonoBehaviour {
	public bool useParentControl = false;
	public AnimationControl parentControl;
	ParticleSystem partiSystem;
	public ParticleSystem particleSystem {
		get {
			if (partiSystem == null)
				partiSystem = base.GetComponent<ParticleSystem> ();
			if (partiSystem == null)
				this.enabled = false;
			return partiSystem;
		}
	}

	public float pressure = 1.0f;
	float lastPressure = 1.0f;

	public bool adjustPosition = false;
	private ParamControl<Vector3> pPosition;
	
	public bool adjustEmission = false;
	private ParamControl<float> pEmission;

	public bool adjustSize = false;
	private ParamControl<float> pSize;

	public bool adjustLife = false;
	private ParamControl<float> pLife;

	public bool adjustSpeed = false;
	private ParamControl<float> pSpeed;

	// Use this for initialization
	void Start () {
		if (parentControl == null && useParentControl && this.transform.parent != null) {
			parentControl = this.transform.parent.GetComponentInParent<AnimationControl>();
		}
		if (parentControl == null)
			useParentControl = false;

		pPosition = new ParamControl<Vector3> (Vector3.zero, this.transform.localPosition, this.transform.localPosition);
		pEmission = new ParamControl<float> (0f, particleSystem.emissionRate, particleSystem.emissionRate);
		pSize = new ParamControl<float> (0f, partiSystem.startSize, partiSystem.startSize);
		pLife = new ParamControl<float> (0f, particleSystem.startLifetime, particleSystem.startLifetime);
		pSpeed = new ParamControl<float> (0f, partiSystem.startSpeed, partiSystem.startSpeed);
	}
	
	// Update is called once per frame
	void Update () {
		CheckPressure ();
	}

	void CheckPressure()
	{
		if (useParentControl)
			pressure = parentControl.pressure;

		if (pressure != lastPressure) {
			lastPressure = pressure;
			UpdatePressure();
		}
	}

	void UpdatePressure()
	{
		pressure = Mathf.Clamp (pressure, 0f, 1f);

		if (adjustPosition) {
			this.transform.localPosition = pPosition.UpdatePressure(pressure);
		}

		if (adjustEmission) {
			particleSystem.emissionRate = pEmission.UpdatePressure(pressure);
		}

		if (adjustSize) {
			particleSystem.startSize = pSize.UpdatePressure(pressure);
		}
		
		if (adjustLife) {
			particleSystem.startLifetime = pLife.UpdatePressure(pressure);
		}
		
		if (adjustSpeed) {
			particleSystem.startSpeed = pSpeed.UpdatePressure(pressure);
		}
	}
}
