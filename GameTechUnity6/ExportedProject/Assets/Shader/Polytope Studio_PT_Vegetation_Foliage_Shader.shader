Shader "Polytope Studio/PT_Vegetation_Foliage_Shader" {
	Properties {
		[NoScaleOffset] _BaseTexture ("Base Texture", 2D) = "white" {}
		[Toggle] _CUSTOMCOLORSTINTING ("CUSTOM COLORS  TINTING", Float) = 0
		[HDR] _TopColor ("Top Color", Vector) = (0,0.2178235,1,1)
		[HDR] _GroundColor ("Ground Color", Vector) = (1,0,0,1)
		[HDR] _Gradient ("Gradient", Range(0, 1)) = 1
		_GradientPower ("Gradient Power", Range(0, 10)) = 5
		_LeavesThickness ("Leaves Thickness", Range(0.1, 0.95)) = 0.5
		_Smoothness ("Smoothness", Range(0, 1)) = 0
		[Toggle(_TRANSLUCENCYONOFF_ON)] _TRANSLUCENCYONOFF ("TRANSLUCENCY ON/OFF", Float) = 1
		[Header(Translucency)] _Translucency ("Strength", Range(0, 50)) = 1
		_TransNormalDistortion ("Normal Distortion", Range(0, 1)) = 0.1
		_TransScattering ("Scaterring Falloff", Range(1, 50)) = 2
		_TransDirect ("Direct", Range(0, 1)) = 1
		_TransAmbient ("Ambient", Range(0, 1)) = 0.2
		_TransShadow ("Shadow", Range(0, 1)) = 0.9
		[HideInInspector] _MaskClipValue ("Mask Clip Value", Range(0, 1)) = 0.5
		[Toggle(_CUSTOMWIND_ON)] _CUSTOMWIND ("CUSTOM WIND", Float) = 1
		[Toggle(_WINDMASKONOFF_ON)] _WINDMASKONOFF ("WIND MASK ON/OFF", Float) = 0
		_WindMovement ("Wind Movement", Range(0, 10)) = 0.5
		_WindDensity ("Wind Density", Range(0, 5)) = 3.3
		_WindStrength ("Wind Strength", Range(0, 1)) = 0.3
		[Toggle(_SNOWONOFF_ON)] _SNOWONOFF ("SNOW ON/OFF", Float) = 0
		_SnowGradient ("Snow Gradient", Range(0, 1)) = 0.83
		_SnowCoverage ("Snow Coverage", Range(0, 1)) = 0.45
		_SnowAmount ("Snow Amount", Range(0, 1)) = 1
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