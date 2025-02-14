Shader "Polytope Studio/ PT_Medieval Buildings Shader PBR" {
	Properties {
		[Header(WALLS )] [HDR] _Exteriorwalls1colour ("Exterior walls 1 colour", Vector) = (0.6792453,0.6010633,0.5863296,1)
		[HDR] _Exteriorwalls2color ("Exterior walls 2 color", Vector) = (0.3524386,0.6133218,0.754717,1)
		[HDR] _Exteriorwalls3color ("Exterior walls 3 color", Vector) = (0.8867924,0.6561894,0.23843,1)
		[HDR] _Interiorwallscolor ("Interior walls color", Vector) = (0.4127358,0.490063,0.5,0)
		[Header(EXTERIOR WALLS  DETAILS)] [Toggle(_EXTERIORTEXTUREONOFF_ON)] _ExteriortextureOnOff ("Exterior texture On/Off", Float) = 0
		[NoScaleOffset] _Exteriorwallstexture ("Exterior walls texture", 2D) = "white" {}
		_Exteriorwallstiling ("Exterior walls tiling", Range(0, 1)) = 0
		[Header(INTERIOR WALLS  DETAILS)] [Toggle(_INTERIORTEXTUREONOFF_ON)] _InteriortextureOnOff ("Interior texture On/Off", Float) = 0
		[NoScaleOffset] _Interiorwallstexture ("Interior walls texture", 2D) = "white" {}
		_Interiorwallstiling ("Interior walls tiling", Range(0, 1)) = 0
		[Header(WOOD)] [HDR] _Wood1color ("Wood 1 color", Vector) = (0.4056604,0.2683544,0.135858,1)
		[HDR] _Wood2color ("Wood 2 color", Vector) = (0.1981132,0.103908,0.06634924,1)
		[HDR] _Wood3color ("Wood 3 color", Vector) = (0.5377358,0.4531547,0.377937,1)
		[Header(FABRICS)] [HDR] _Fabric1color ("Fabric 1 color", Vector) = (0.5849056,0.5418971,0.4331613,0)
		[HDR] _Fabric2color ("Fabric 2 color", Vector) = (0.3649431,0.5566038,0.4386422,0)
		[HDR] _Fabric3color ("Fabric 3 color", Vector) = (0.5450981,0.6936808,0.6980392,0)
		[Header(ROCK )] [HDR] _Rock1color ("Rock 1 color", Vector) = (0.4127358,0.490063,0.5,0)
		[HDR] _Rock2color ("Rock 2 color", Vector) = (0.3679245,0.2968027,0.1787558,0)
		[Header(CERAMIC TILES)] [HDR] _Ceramictiles1color ("Ceramic tiles 1 color", Vector) = (0.3207547,0.04869195,0.01059096,1)
		_Ceramic1smoothness ("Ceramic 1 smoothness", Range(0, 1)) = 0.3
		[HDR] _Ceramictiles2color ("Ceramic tiles 2 color", Vector) = (0.7924528,0.3776169,0.1682093,1)
		_Ceramic2smoothness ("Ceramic 2 smoothness", Range(0, 1)) = 0.3
		[HDR] _Ceramictiles3color ("Ceramic tiles 3 color ", Vector) = (0.4677838,0.3813261,0.2501584,1)
		_Ceramic3smoothness ("Ceramic 3 smoothness", Range(0, 1)) = 0.3
		[Header(METAL)] [HDR] _Metal1color ("Metal 1 color", Vector) = (0.385947,0.5532268,0.5566038,0)
		_Metal1metallic ("Metal 1 metallic", Range(0, 1)) = 0.65
		_Metal1smootness ("Metal 1 smootness", Range(0, 1)) = 0.7
		[HDR] _Metal2color ("Metal 2 color", Vector) = (2,0.5960785,0,0)
		_Metal2metallic ("Metal 2 metallic", Range(0, 1)) = 0.65
		_Metal2smootness ("Metal 2 smootness", Range(0, 1)) = 0.7
		[HDR] _Metal3color ("Metal 3 color", Vector) = (1.584906,0.8017758,0,1)
		_Metal3metallic ("Metal 3 metallic", Range(0, 1)) = 0.65
		_Metal3smootness ("Metal 3 smootness", Range(0, 1)) = 0.7
		[Header(OTHER COLORS)] [HDR] _Ropecolor ("Rope color", Vector) = (0.6037736,0.5810711,0.3389106,1)
		[HDR] _Haycolor ("Hay color", Vector) = (0.764151,0.517899,0.1622019,1)
		[HDR] _Mortarcolor ("Mortar color", Vector) = (0.6415094,0.5745595,0.4629761,0)
		[HDR] _Coatofarmscolor ("Coat of arms color", Vector) = (1,0,0,0)
		[NoScaleOffset] _Coarofarmstexture ("Coar of arms texture", 2D) = "black" {}
		[Toggle] _MetallicOn ("Metallic On", Float) = 1
		[Toggle] _SmoothnessOn ("Smoothness On", Float) = 1
		[HideInInspector] [Gamma] _Transparency ("Transparency", Range(0, 1)) = 1
		[HideInInspector] _TextureSample2 ("Texture Sample 2", 2D) = "white" {}
		[HideInInspector] [NoScaleOffset] _TextureSample9 ("Texture Sample 9", 2D) = "white" {}
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
	//CustomEditor "ASEMaterialInspector"
}