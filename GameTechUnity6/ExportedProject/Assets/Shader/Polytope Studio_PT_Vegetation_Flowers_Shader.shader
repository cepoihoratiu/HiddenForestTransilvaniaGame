Shader "Polytope Studio/PT_Vegetation_Flowers_Shader" {
	Properties {
		[NoScaleOffset] _BASETEXTURE ("BASE TEXTURE", 2D) = "black" {}
		[Toggle] _CUSTOMCOLORSTINTING ("CUSTOM COLORS  TINTING", Float) = 1
		_TopColor ("Top Color", Vector) = (0.3505436,0.5754717,0.3338822,1)
		_GroundColor ("Ground Color", Vector) = (0.1879673,0.3113208,0.1776878,1)
		[HDR] _Gradient (" Gradient", Range(0, 1)) = 1
		_GradientPower1 ("Gradient Power", Range(0, 10)) = 1
		_LeavesThickness ("Leaves Thickness", Range(0.1, 0.95)) = 0.5
		[Toggle] _CUSTOMFLOWERSCOLOR ("CUSTOM FLOWERS COLOR", Float) = 0
		[HideInInspector] _MaskClipValue ("Mask Clip Value", Range(0, 1)) = 0.5
		[HDR] _FLOWERSCOLOR ("FLOWERS COLOR", Vector) = (1,0,0,0)
		[Toggle(_TRANSLUCENCYONOFF_ON)] _TRANSLUCENCYONOFF ("TRANSLUCENCY ON/OFF", Float) = 1
		[Header(Translucency)] _Translucency ("Strength", Range(0, 50)) = 1
		_TransNormalDistortion ("Normal Distortion", Range(0, 1)) = 0.1
		_TransScattering ("Scaterring Falloff", Range(1, 50)) = 2
		_TransDirect ("Direct", Range(0, 1)) = 1
		_TransAmbient ("Ambient", Range(0, 1)) = 0.2
		_TransShadow ("Shadow", Range(0, 1)) = 0.9
		[Toggle(_CUSTOMWIND_ON)] _CUSTOMWIND ("CUSTOM WIND", Float) = 1
		_WindMovement ("Wind Movement", Range(0, 1)) = 0.5
		_WindDensity ("Wind Density", Range(0, 5)) = 0.2
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