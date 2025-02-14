Shader "Polytope Studio/PT_Rock_Shader" {
	Properties {
		[NoScaleOffset] _BaseTexture ("Base Texture", 2D) = "white" {}
		_Smoothness ("Smoothness", Range(0, 1)) = 0.2
		[Toggle(_GRADIENTONOFF_ON)] _GRADIENTONOFF ("GRADIENT  ON/OFF", Float) = 0
		[HDR] _TopColor ("Top Color", Vector) = (0.4811321,0.4036026,0.2382966,1)
		[HDR] _GroundColor ("Ground Color", Vector) = (0.08490568,0.05234205,0.04846032,1)
		[HideInInspector] _SnowDirection ("Snow Direction", Vector) = (0.1,1,0.1,0)
		_Gradient ("Gradient ", Range(0, 1)) = 1
		_GradientPower ("Gradient Power", Range(0, 10)) = 1
		[Toggle] _WorldObjectGradient ("World/Object Gradient", Float) = 1
		[Toggle(_DECALSONOFF_ON)] _DECALSONOFF ("DECALS ON/OFF", Float) = 0
		[NoScaleOffset] _DecalsTexture ("Decals Texture", 2D) = "white" {}
		_DecalsColor ("Decals Color", Vector) = (0,0,0,0)
		[Toggle] _DECALEMISSIONONOFF ("DECAL EMISSION ON/OFF", Float) = 1
		[HDR] _DecakEmissionColor ("Decak Emission Color", Vector) = (1,0.9248579,0,0)
		_DecalEmissionIntensity ("Decal Emission Intensity", Range(0, 10)) = 4
		[Toggle] _ANIMATEDECALEMISSIONONOFF ("ANIMATE DECAL EMISSION ON/OFF", Float) = 1
		[Toggle(_DETAILTEXTUREONOFF_ON)] _DETAILTEXTUREONOFF ("DETAIL TEXTURE  ON/OFF", Float) = 0
		[NoScaleOffset] _DetailTexture ("Detail Texture", 2D) = "white" {}
		_DetailTextureTiling ("Detail Texture Tiling", Range(0.1, 10)) = 0.5
		[Toggle(_SNOWONOFF_ON)] _SNOWONOFF ("SNOW ON/OFF", Float) = 0
		_SnowCoverage ("Snow Coverage", Range(0, 1)) = 0.46
		_SnowAmount ("Snow Amount", Range(0, 1)) = 1
		_SnowFade ("Snow Fade", Range(0, 1)) = 0.32
		[Toggle] _SnowNoiseOnOff ("Snow Noise On/Off", Float) = 1
		_SnowNoiseScale ("Snow Noise Scale", Range(0, 100)) = 87.23351
		_SnowNoiseContrast ("Snow Noise Contrast", Range(0, 1)) = 0.002
		[HideInInspector] _Vector1 ("Vector 1", Vector) = (0,1,0,0)
		[Toggle(_TOPPROJECTIONONOFF_ON)] _TOPPROJECTIONONOFF ("TOP PROJECTION ON/OFF", Float) = 0
		[NoScaleOffset] _TopProjectionTexture ("Top Projection Texture", 2D) = "white" {}
		_TopProjectionTextureTiling ("Top Projection Texture Tiling", Range(0.1, 10)) = 0.5
		_TopProjectionTextureCoverage ("Top Projection Texture  Coverage", Range(0, 1)) = 1
		[HDR] _OreColor ("Ore Color", Vector) = (1,0.9248579,0,0)
		[Toggle] _OREEMISSIONONOFF ("ORE EMISSION ON/OFF", Float) = 0
		[HDR] _OreEmissionColor ("Ore Emission Color", Vector) = (1,0.9248579,0,0)
		_OreEmissionIntensity ("Ore Emission Intensity", Range(0, 10)) = 1
		[Toggle] _ANIMATEOREEMISSIONONOFF ("ANIMATE ORE  EMISSION ON/OFF", Float) = 0
		[HideInInspector] _texcoord2 ("", 2D) = "white" {}
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