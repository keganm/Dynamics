Shader "Custom/DrawRipple" {
	Properties {
	    _MainTex ("Base (RGB)", 2D) = "red" {}
        _BaseRipple("Base Ripple",2D) = "white" {}
		_BaseRipplePosition("Ripple Position", Vector) = (0,0,1,1)
	}
	
	SubShader {
	
	
	//////////////////////// Draw Ripple
	Pass{
		Tags { "RenderType"="Opaque" }
		LOD 200
		Blend SrcAlpha OneMinusSrcAlpha
		
      CGPROGRAM
      #pragma vertex vert
      #pragma fragment frag
      #include "UnityCG.cginc"
      
      
        sampler2D _MainTex;
        sampler2D _BaseRipple;
        fixed4 _BaseRipplePosition;
        float _BaseRippleStrength;
        
        
      
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
  		c = fixed4(0,0,0,0.1);
      	
      	return c;
      }
      
      ENDCG
    }
	
	
	//////////////////////// Draw Ripple
	Pass{
		Tags { "RenderType"="Opaque" }
		LOD 200
		Blend SrcAlpha OneMinusSrcAlpha
		
      CGPROGRAM
      #pragma vertex vert
      #pragma fragment frag
      #include "UnityCG.cginc"
      
      
        sampler2D _MainTex;
        sampler2D _BaseRipple;
        fixed4 _BaseRipplePosition;
        float _BaseRippleStrength;
        
        
      
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
  		fixed2 cntr = _BaseRipplePosition.xy;
  		fixed2 size = _BaseRipplePosition.zw;
  		
  		fixed2 u = ((In.uv-(cntr-((1/size)/2))) * size);
  		c = fixed4(0,0,0,0.00001);
  		c += tex2D(_BaseRipple, u)*_BaseRippleStrength;
  		c.a += c.r;
      	
      	return c;
      }
      
      ENDCG
    }
  } 
}
