Shader "Custom/ProjectionWater" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Glossiness ("Smoothness", Range(0,1)) = 0.5
		_Metallic ("Metallic", Range(0,1)) = 0.0
		_NormalMap("Normalmap", 2D) = "bump" {}
		_RippleMap("Ripplemap", 2D) = "white" {}
		_NormalBlend ("Alpha", Range(0,1)) = 0.5
        _RimColor ("Rim Color", Color) = (0.26,0.19,0.16,0.0)
        _RimPower ("Rim Power", Range(0.5,8.0)) = 3.0
		_Alpha ("Alpha", Range(0,1)) = 0.5
		_Width ("Width", int) = 1024
		_Height ("Height", int) = 1024
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;
		sampler2D _NormalMap;
		sampler2D _RippleMap;

		struct Input {
			float2 uv_MainTex;
			float2 uv_NormalMap;
			float2 uv_RippleMap;
            float3 viewDir;
		};

		half _Glossiness;
		half _Metallic;
		fixed4 _Color;
        float4 _RimColor;
        float _RimPower;
        float _Alpha;
        half _NormalBlend;
        
        float _Width;
        float _Height;
        

		void surf (Input IN, inout SurfaceOutputStandard o) {
		
			half yOffset = 1.0/_Height;
			half xOffset = 1.0/_Width;
			// Albedo comes from a texture tinted by color
			fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			
			//fixed4 rip = tex2D(_RippleMap, IN.uv_RippleMap);
			fixed4 ripL = tex2D(_RippleMap, IN.uv_RippleMap + float2(-xOffset,0));
			fixed4 ripR = tex2D(_RippleMap, IN.uv_RippleMap + float2(xOffset,0));
			fixed4 ripU = tex2D(_RippleMap, IN.uv_RippleMap + float2(0,-yOffset));
			fixed4 ripD = tex2D(_RippleMap, IN.uv_RippleMap + float2(0,yOffset));
			
			fixed4 n = fixed4(1,1,1,1);
			
			n.r *= ((ripL.r - ripR.r) + 1) * 0.5;
			n.g *= ((ripU.r - ripD.r) + 1) * 0.5;
			
			o.Normal = UnpackNormal((tex2D(_NormalMap, IN.uv_NormalMap)*_NormalBlend)+(n*0.5))*1.5;
			//o.Normal = UnpackNormal((tex2D(_NormalMap, IN.uv_NormalMap))*_NormalBlend) + (n*(1.0-_NormalBlend)));
			
			o.Metallic = _Metallic;
			o.Smoothness = _Glossiness;
			
			o.Alpha = c.a * _Alpha;
			
			
            half rim = 1.0 - saturate(dot (normalize(IN.viewDir), o.Normal));
            o.Emission = _RimColor.rgb * pow (rim, _RimPower);
		}
		ENDCG
	} 
	FallBack "Diffuse"
}
