Shader "Polytope Studio/PT_Vegetation_Opaque_Shader" {
	Properties {
		[NoScaleOffset] _BaseTexture ("Base Texture", 2D) = "white" {}
		[Toggle] _CUSTOMCOLORSTINTING ("CUSTOM COLORS  TINTING", Float) = 0
		[HDR] _GroundColor ("Ground Color", Vector) = (0.08490568,0.05234205,0.04846032,1)
		[HDR] _TopColor ("Top Color", Vector) = (0.4811321,0.4036026,0.2382966,1)
		[HDR] _Gradient ("Gradient ", Range(0, 1)) = 1
		_GradientPower ("Gradient Power", Range(0, 10)) = 1
		_Smoothness ("Smoothness", Range(0, 1)) = 0.7748996
		[Toggle(_SNOWONOFF_ON)] _SNOWONOFF ("SNOW ON/OFF", Float) = 0
		_SnowAmount ("Snow Amount", Range(0, 1)) = 1
		_SnowCoverage ("Snow Coverage", Range(0, 1)) = 0.45
		_SnowFade ("Snow Fade", Range(0, 1)) = 0.83
		[Toggle(_CUSTOMWIND_ON)] _CUSTOMWIND ("CUSTOM WIND", Float) = 1
		[Toggle(_WINDMASKONOFF_ON)] _WINDMASKONOFF ("WIND MASK ON/OFF", Float) = 0
		_WindMovement ("Wind Movement", Range(0, 10)) = 0.5
		_WindDensity ("Wind Density", Range(0, 5)) = 3.3
		_WindStrength ("Wind Strength", Range(0, 1)) = 0.3
		[HideInInspector] _texcoord ("", 2D) = "white" {}
		[HideInInspector] __dirty ("", Float) = 1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
	Fallback "Diffuse"
}