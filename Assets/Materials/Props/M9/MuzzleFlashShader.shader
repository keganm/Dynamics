Shader "Custom/MuzzleFlashShader" {
        Properties {
            _MainTex ("Base (RGB)", 2D) = "white" {}
            _Alpha ("Alpha", Range(0,1)) = 1.0
        }
        SubShader {
   		Pass{
		Tags { "RenderType"="Opaque" }
		LOD 200
		Blend SrcAlpha OneMinusSrcAlpha
		
      CGPROGRAM
      // compilation directives for this snippet, e.g.:
      #pragma vertex vert
      #pragma fragment frag
      #include "UnityCG.cginc"
      
      
        sampler2D _MainTex;
        float _Alpha;
        
        
      
      struct v2f {
      	float4 pos : SV_POSITION;
      	fixed2 uv : TEXCOORD0;
      };
      
      v2f vert (appdata_base v)
      {
      		v2f o;
      		o.pos = mul (UNITY_MATRIX_MVP, v.vertex);
      		o.uv = v.texcoord;
      		return o;
      }
      
      fixed4 frag (v2f In) :SV_Target { 
      	float4 c = tex2D(_MainTex,In.uv);
  		c.a  = c.a * _Alpha;
  		
      	return c;
      }
      
      // the Cg/HLSL code itself
      
      ENDCG
    }
    }
}