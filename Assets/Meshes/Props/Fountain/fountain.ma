//Maya ASCII 2015ff05 scene
//Name: fountain.ma
//Last modified: Sun, Jul 12, 2015 09:53:49 AM
//Codeset: 1252
requires maya "2015ff05";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201408201531-928694-1";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 115.18085709799605 200.626305797767 309.1674758403546 ;
	setAttr ".r" -type "double3" -32.138352729612066 18.200000000000596 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 355.42781873999201;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 48.321365628582711 171.73442858568072 3.7837951384761368 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".rp" -type "double3" 0 0.5 0 ;
	setAttr ".sp" -type "double3" 0 0.5 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" -2.9802322e-008 1
		 0.99999976 1 0.99999988 0 0 0 0.011204362 0.011204481 0.016472936 0.016472995 0.016472995
		 0.98352695 0.011204481 0.98879552 0.029192388 0.029192448 0.029192388 0.97080755
		 0.98352695 0.016472995 0.97080755 0.029192448 0.9887954 0.011204481 0.98352695 0.98352695
		 0.97080755 0.97080755 0.9887954 0.98879552;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -6.4369416 0.5 6.4369416 
		6.4369416 0.5 6.4369416 -6.4369421 0.5 -6.4369416 6.4369407 0.5 -6.4369416 -6.2248712 
		0.5 6.2248707 -6.2926979 0.5 6.292697 -6.0611224 0.5 6.0611224 6.2248707 0.5 6.2248707 
		6.0611224 0.5 6.0611224 6.292697 0.5 6.292697 -6.2248707 0.5 -6.2248707 -6.0611224 
		0.5 -6.0611224 -6.292697 0.5 -6.292697 6.2248707 0.5 -6.2248707 6.0611224 0.5 -6.0611224 
		6.292697 0.5 -6.292697;
	setAttr -s 16 ".vt[0:15]"  -0.51146126 -0.5 0.51146126 0.51146126 -0.5 0.51146126
		 -0.51146132 -0.5 -0.51146126 0.5114612 -0.5 -0.51146126 -0.49461076 0.42678404 0.4946107
		 -0.50000006 0.25002497 0.5 -0.48159972 0.5 0.48159972 0.4946107 0.42678404 0.4946107
		 0.48159972 0.5 0.48159972 0.5 0.25002497 0.5 -0.4946107 0.42678404 -0.4946107 -0.48159972 0.5 -0.48159972
		 -0.5 0.25002497 -0.5 0.4946107 0.42678404 -0.4946107 0.48159972 0.5 -0.48159972 0.5 0.25002497 -0.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 2 0 0 3 1 0 5 4 0 4 10 0 10 12 0
		 12 5 1 4 6 0 6 11 1 11 10 0 4 7 0 7 8 0 8 6 1 5 9 1 9 7 0 7 13 0 13 14 0 14 8 1 9 15 1
		 15 13 0 10 13 0 15 12 1 11 14 1 1 9 0 5 0 0 15 3 0 2 12 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 -6
		mu 0 4 5 8 9 6
		f 4 -9 11 12 13
		mu 0 4 8 5 10 11
		f 4 -5 14 15 -12
		mu 0 4 5 4 12 10
		f 4 -13 16 17 18
		mu 0 4 11 10 13 14
		f 4 -16 19 20 -17
		mu 0 4 10 12 15 13
		f 4 -7 21 -21 22
		mu 0 4 7 6 13 15
		f 4 -11 23 -18 -22
		mu 0 4 6 9 14 13
		f 4 0 24 -15 25
		mu 0 4 3 2 12 4
		f 4 -14 -19 -24 -10
		mu 0 4 8 11 14 9
		f 4 -23 26 -2 27
		mu 0 4 7 15 1 0
		f 4 -4 -27 -20 -25
		mu 0 4 2 1 15 12
		f 4 2 -26 -8 -28
		mu 0 4 0 3 4 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2";
	setAttr ".rp" -type "double3" 0 0.5 0 ;
	setAttr ".sp" -type "double3" 0 0.5 0 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.43680325 0.32727632
		 0.43680325 0.0018835106 0.53119385 0.0018835106 0.53119385 0.32727632 0.0019921151
		 0.32727674 0.0019921151 0.0018833757 0.096382156 0.0018833757 0.096382156 0.32727674
		 0.90361667 0.65665996 0.90361667 0.33126771 0.99800777 0.33126771 0.99800777 0.65665996
		 0.5381487 0.32727632 0.5381487 0.0018835106 0.63253927 0.0018835106 0.63253927 0.32727632
		 0.58597755 0.94354314 0.3958753 0.94354314 0.3958753 0.64790171 0.58597755 0.64790171
		 0.38913387 0.94354367 0.19903111 0.94354367 0.19903111 0.64790201 0.38913387 0.64790201
		 0.0019921151 0.64790171 0.19209488 0.64790171 0.19209488 0.94354355 0.0019921151
		 0.94354355 0.59271884 0.64790148 0.78282213 0.64790148 0.78282213 0.9435429 0.59271884
		 0.9435429 0.65436983 0.31240064 0.95001167 0.31240064 0.95851195 0.32090092 0.64586955
		 0.32090092 0.95001167 0.016758805 0.95851195 0.0082585216 0.96488708 0.3272762 0.6394943
		 0.3272762 0.65436983 0.016758805 0.64586955 0.0082585216 0.96488708 0.0018833757
		 0.6394943 0.0018833757 0.8889814 0.33976799 0.59333956 0.33976799 0.58483928 0.33126745
		 0.89748168 0.33126745 0.59333956 0.63540941 0.58483928 0.64390993 0.8889814 0.63540941
		 0.89748168 0.64390993 0.27929732 0.64391047 0.27929732 0.3312681 0.37500951 0.3312681
		 0.37500951 0.64391047 0.48299181 0.64391047 0.48299181 0.33126798 0.578704 0.33126798
		 0.578704 0.64391047 0.38114452 0.64391065 0.38114452 0.3312681 0.47685668 0.3312681
		 0.47685668 0.64391065 0.17744975 0.64391035 0.17744975 0.3312681 0.27316192 0.3312681
		 0.27316192 0.64391035 0.10990738 0.0082587916 0.10990738 0.3209013 0.10353251 0.32727674
		 0.10353251 0.0018833757 0.4225499 0.3209013 0.42892477 0.32727674 0.4225499 0.0082587916
		 0.42892477 0.0018833757;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  -6.4560642 0.5 6.4560642 
		6.4560642 0.5 6.4560642 -6.4560642 0.5 6.4560642 6.4560642 0.5 6.4560642 -6.4560642 
		0.5 -6.4560642 6.4560642 0.5 -6.4560642 -6.4560642 0.5 -6.4560642 6.4560642 0.5 -6.4560642 
		-6.8273129 0.5 6.8273129 6.8273129 0.5 6.8273129 6.8273129 0.5 6.8273129 -6.8273129 
		0.5 6.8273129 -6.8273129 0.5 -6.8273129 6.8273129 0.5 -6.8273129 6.8273129 0.5 -6.8273129 
		-6.8273129 0.5 -6.8273129 -6.8273129 0.5 6.8273129 -6.8273129 0.5 -6.8273129 6.8273129 
		0.5 -6.8273129 6.8273129 0.5 6.8273129 -7.1057487 0.5 7.1057487 7.1057487 0.5 7.1057487 
		7.1057487 0.5 7.1057487 -7.1057487 0.5 7.1057487 -7.1057487 0.5 -7.1057487 7.1057487 
		0.5 -7.1057487 7.1057487 0.5 -7.1057487 -7.1057487 0.5 -7.1057487;
	setAttr -s 28 ".vt[0:27]"  -0.49999994 -0.5 0.49999994 0.49999994 -0.5 0.49999994
		 -0.49999994 0.14301735 0.49999994 0.49999994 0.14301735 0.49999994 -0.49999994 0.14301735 -0.49999994
		 0.49999994 0.14301735 -0.49999994 -0.49999994 -0.5 -0.49999994 0.49999994 -0.5 -0.49999994
		 -0.52875185 -0.5 0.52875185 0.52875185 -0.5 0.52875185 0.52875185 0.14301735 0.52875185
		 -0.52875185 0.14301735 0.52875185 -0.52875185 0.14301735 -0.52875185 0.52875185 0.14301735 -0.52875185
		 0.52875185 -0.5 -0.52875185 -0.52875185 -0.5 -0.52875185 -0.52875185 -0.18072686 0.52875185
		 -0.52875185 -0.18072686 -0.52875185 0.52875185 -0.18072686 -0.52875185 0.52875185 -0.18072686 0.52875185
		 -0.55031574 -0.5 0.55031574 0.55031574 -0.5 0.55031574 0.55031574 -0.18072686 0.55031574
		 -0.55031574 -0.18072686 0.55031574 -0.55031574 -0.18072686 -0.55031574 0.55031574 -0.18072686 -0.55031574
		 0.55031574 -0.5 -0.55031574 -0.55031574 -0.5 -0.55031574;
	setAttr -s 56 ".ed[0:55]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 0 8 1 1 9 1 8 9 1 3 10 1 2 11 1 11 10 0 4 12 1 5 13 1
		 12 13 0 7 14 1 13 18 0 6 15 1 15 14 1 12 17 0 14 9 1 10 13 0 15 8 1 11 12 0 16 11 0
		 16 17 0 17 18 0 19 10 0 18 19 0 19 16 0 8 20 1 9 21 1 20 21 0 19 22 1 21 22 0 16 23 1
		 22 23 0 20 23 0 17 24 1 18 25 1 24 25 0 14 26 1 25 26 0 15 27 1 27 26 0 24 27 0 26 21 0
		 25 22 0 27 20 0 23 24 0;
	setAttr -s 28 -ch 112 ".fc[0:27]" -type "polyFaces" 
		f 4 38 40 42 -44
		mu 0 4 0 1 2 3
		f 4 46 48 -51 -52
		mu 0 4 4 5 6 7
		f 4 -53 -49 53 -41
		mu 0 4 8 9 10 11
		f 4 54 43 55 51
		mu 0 4 12 13 14 15
		f 4 4 1 -6 -1
		mu 0 4 16 17 18 19
		f 4 8 3 -10 -3
		mu 0 4 20 21 22 23
		f 4 5 7 9 11
		mu 0 4 24 25 26 27
		f 4 -9 -7 -5 -11
		mu 0 4 28 29 30 31
		f 4 0 13 -15 -13
		mu 0 4 32 33 34 35
		f 4 -2 16 17 -16
		mu 0 4 44 45 46 47
		f 4 2 19 -21 -19
		mu 0 4 48 50 51 49
		f 4 -4 23 24 -22
		mu 0 4 36 40 41 37
		f 4 -12 21 26 -14
		mu 0 4 33 36 37 34
		f 4 -8 15 27 -20
		mu 0 4 50 44 47 51
		f 4 10 12 -29 -24
		mu 0 4 40 32 35 41
		f 4 6 18 -30 -17
		mu 0 4 45 48 49 46
		f 4 -32 30 29 25
		mu 0 4 52 53 54 55
		f 4 20 22 -33 -26
		mu 0 4 56 57 58 59
		f 4 -35 -23 -28 -34
		mu 0 4 60 61 62 63
		f 4 -36 33 -18 -31
		mu 0 4 64 65 66 67
		f 4 14 37 -39 -37
		mu 0 4 35 34 38 39
		f 4 35 41 -43 -40
		mu 0 4 68 69 70 71
		f 4 32 45 -47 -45
		mu 0 4 72 74 75 73
		f 4 -25 49 50 -48
		mu 0 4 37 41 43 42
		f 4 -27 47 52 -38
		mu 0 4 34 37 42 38
		f 4 34 39 -54 -46
		mu 0 4 74 68 71 75
		f 4 28 36 -55 -50
		mu 0 4 41 35 39 43
		f 4 31 44 -56 -42
		mu 0 4 69 72 73 70;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 32 ".lnk";
	setAttr -s 32 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode shadingEngine -n "scifi_dowtown_scenery:default1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo1";
createNode phong -n "scifi_dowtown_scenery:default2";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default2F";
	setAttr ".ftn" -type "string" "/Maps/derf1.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default2P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_lower_level_windows";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo2";
createNode phong -n "scifi_dowtown_scenery:default_lower_level_windows1";
	setAttr ".rfi" 0;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_lower_level_windows1F";
	setAttr ".ftn" -type "string" "/Maps/1267046936mens.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_lower_level_windows1P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_level1_windows";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo3";
createNode phong -n "scifi_dowtown_scenery:default_level1_windows1";
	setAttr ".rfi" 0;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_level1_windows1F";
	setAttr ".ftn" -type "string" "/Maps/tgb1.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_level1_windows1P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_level1_windows_1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo4";
createNode phong -n "scifi_dowtown_scenery:default_level1_windows_2";
	setAttr ".rfi" 0;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_level1_windows_2F";
	setAttr ".ftn" -type "string" "/Maps/dscn0512.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_level1_windows_2P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_wall1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo5";
createNode phong -n "scifi_dowtown_scenery:default_wall2";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_wall2F";
	setAttr ".ftn" -type "string" "/Maps/antenna.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_wall2P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_windows";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo6";
createNode phong -n "scifi_dowtown_scenery:default_windows1";
	setAttr ".rfi" 0;
	setAttr ".c" -type "float3" 0 0 0 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode shadingEngine -n "scifi_dowtown_scenery:default_balcony_tubbing";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo7";
createNode phong -n "scifi_dowtown_scenery:default_balcony_tubbing1";
	setAttr ".rfi" 0;
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode shadingEngine -n "scifi_dowtown_scenery:default_floor";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo8";
createNode phong -n "scifi_dowtown_scenery:default_floor1";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_floor1F";
	setAttr ".ftn" -type "string" "/Maps/fvb2.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_floor1P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_roofs";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo9";
createNode phong -n "scifi_dowtown_scenery:default_roofs1";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_roofs1F";
	setAttr ".ftn" -type "string" "/Maps/6b.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_roofs1P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_wall3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo10";
createNode phong -n "scifi_dowtown_scenery:default_wall4";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_wall4F";
	setAttr ".ftn" -type "string" "/Maps/dfca1.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_wall4P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_bldg2b";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo11";
createNode phong -n "scifi_dowtown_scenery:default_bldg2b1";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_bldg2b1F";
	setAttr ".ftn" -type "string" "/Maps/flatro5.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_bldg2b1P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_windos_bldg2b";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo12";
createNode phong -n "scifi_dowtown_scenery:default_windos_bldg2b1";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_windos_bldg2b1F";
	setAttr ".ftn" -type "string" "/Maps/fac_231.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_windos_bldg2b1P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_bldg3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo13";
createNode phong -n "scifi_dowtown_scenery:default_bldg4";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_bldg4F";
	setAttr ".ftn" -type "string" "/Maps/flatro9.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_bldg4P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_windows_bldg3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo14";
createNode phong -n "scifi_dowtown_scenery:default_windows_bldg4";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_windows_bldg4F";
	setAttr ".ftn" -type "string" "/Maps/fac_250.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_windows_bldg4P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_bldg5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo15";
createNode phong -n "scifi_dowtown_scenery:default_bldg6";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_bldg6F";
	setAttr ".ftn" -type "string" "/Maps/flatro0.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_bldg6P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_windows_bldg5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo16";
createNode phong -n "scifi_dowtown_scenery:default_windows_bldg6";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_windows_bldg6F";
	setAttr ".ftn" -type "string" "/Maps/dcv1.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_windows_bldg6P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_bldg7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo17";
createNode phong -n "scifi_dowtown_scenery:default_bldg8";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_bldg8F";
	setAttr ".ftn" -type "string" "/Maps/derf1.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_bldg8P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_windows_bldg7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo18";
createNode phong -n "scifi_dowtown_scenery:default_windows_bldg8";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_windows_bldg8F";
	setAttr ".ftn" -type "string" "/Maps/axcv1.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_windows_bldg8P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_bldg9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo19";
createNode phong -n "scifi_dowtown_scenery:default_bldg10";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_bldg10F";
	setAttr ".ftn" -type "string" "/Maps/antenna.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_bldg10P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_windows_bldg9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo20";
createNode phong -n "scifi_dowtown_scenery:default_windows_bldg10";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_windows_bldg10F";
	setAttr ".ftn" -type "string" "/Maps/dcv1.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_windows_bldg10P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_bldg11";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo21";
createNode phong -n "scifi_dowtown_scenery:default_bldg12";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_bldg12F";
	setAttr ".ftn" -type "string" "/Maps/flatro0.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_bldg12P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_windows_bldg11";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo22";
createNode phong -n "scifi_dowtown_scenery:default_windows_bldg12";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_windows_bldg12F";
	setAttr ".ftn" -type "string" "/Maps/fac_240.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_windows_bldg12P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_bldg13";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo23";
createNode phong -n "scifi_dowtown_scenery:default_bldg14";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_bldg14F";
	setAttr ".ftn" -type "string" "/Maps/fmq1b.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_bldg14P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_bldg";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo24";
createNode phong -n "scifi_dowtown_scenery:default_bldg15";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_bldg15F";
	setAttr ".ftn" -type "string" "/Maps/antenna_3.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_bldg15P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_bldgs_side";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo25";
createNode phong -n "scifi_dowtown_scenery:default_bldgs_side1";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 2.75;
createNode file -n "scifi_dowtown_scenery:default_bldgs_side1F";
	setAttr ".ftn" -type "string" "/Maps/vpf1b.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_bldgs_side1P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_sector_sidewalk";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo26";
createNode phong -n "scifi_dowtown_scenery:default_sector_sidewalk1";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_sector_sidewalk1F";
	setAttr ".ftn" -type "string" "/Maps/antenna.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_sector_sidewalk1P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_sector";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo27";
createNode phong -n "scifi_dowtown_scenery:default_sector1";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_sector1F";
	setAttr ".ftn" -type "string" "/Maps/derf1.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_sector1P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_electrical___tubbing";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo28";
createNode phong -n "scifi_dowtown_scenery:default_electrical___tubbing1";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_electrical___tubbing1F";
	setAttr ".ftn" -type "string" "/Maps/fbe1d.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_electrical___tubbing1P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_bldgs_under_street";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo29";
createNode phong -n "scifi_dowtown_scenery:default_bldgs_under_street1";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_bldgs_under_street1F";
	setAttr ".ftn" -type "string" "/Maps/fac_170.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_bldgs_under_street1P2D";
createNode shadingEngine -n "scifi_dowtown_scenery:default_under_level_floor";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scifi_dowtown_scenery:materialInfo30";
createNode phong -n "scifi_dowtown_scenery:default_under_level_floor1";
	setAttr ".rfi" 0;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".cp" 3;
createNode file -n "scifi_dowtown_scenery:default_under_level_floor1F";
	setAttr ".ftn" -type "string" "/Maps/antenna_01_01_01_01.jpg";
createNode place2dTexture -n "scifi_dowtown_scenery:default_under_level_floor1P2D";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 32 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 32 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 28 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 28 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".vtn" -type "string" "sRGB gamma";
	setAttr ".wsn" -type "string" "scene-linear Rec 709/sRGB";
	setAttr ".din" -type "string" "sRGB";
	setAttr ".otn" -type "string" "sRGB gamma";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_lower_level_windows.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_level1_windows.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_level1_windows_1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_wall1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_windows.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_balcony_tubbing.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_floor.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_roofs.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_wall3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_bldg2b.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_windos_bldg2b.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_bldg3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_windows_bldg3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_bldg5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_windows_bldg5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_bldg7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_windows_bldg7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_bldg9.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_windows_bldg9.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_bldg11.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_windows_bldg11.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_bldg13.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_bldg.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_bldgs_side.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_sector_sidewalk.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_sector.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_electrical___tubbing.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_bldgs_under_street.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scifi_dowtown_scenery:default_under_level_floor.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_lower_level_windows.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_level1_windows.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_level1_windows_1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_wall1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_windows.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_balcony_tubbing.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_floor.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_roofs.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_wall3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_bldg2b.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_windos_bldg2b.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_bldg3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_windows_bldg3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_bldg5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_windows_bldg5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_bldg7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_windows_bldg7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_bldg9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_windows_bldg9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_bldg11.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_windows_bldg11.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_bldg13.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_bldg.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_bldgs_side.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_sector_sidewalk.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_sector.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_electrical___tubbing.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_bldgs_under_street.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scifi_dowtown_scenery:default_under_level_floor.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "scifi_dowtown_scenery:default2.oc" "scifi_dowtown_scenery:default1.ss"
		;
connectAttr "scifi_dowtown_scenery:default1.msg" "scifi_dowtown_scenery:materialInfo1.sg"
		;
connectAttr "scifi_dowtown_scenery:default2.msg" "scifi_dowtown_scenery:materialInfo1.m"
		;
connectAttr "scifi_dowtown_scenery:default2F.msg" "scifi_dowtown_scenery:materialInfo1.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default2F.oc" "scifi_dowtown_scenery:default2.c"
		;
connectAttr "scifi_dowtown_scenery:default2P2D.c" "scifi_dowtown_scenery:default2F.c"
		;
connectAttr "scifi_dowtown_scenery:default2P2D.tf" "scifi_dowtown_scenery:default2F.tf"
		;
connectAttr "scifi_dowtown_scenery:default2P2D.rf" "scifi_dowtown_scenery:default2F.rf"
		;
connectAttr "scifi_dowtown_scenery:default2P2D.s" "scifi_dowtown_scenery:default2F.s"
		;
connectAttr "scifi_dowtown_scenery:default2P2D.wu" "scifi_dowtown_scenery:default2F.wu"
		;
connectAttr "scifi_dowtown_scenery:default2P2D.wv" "scifi_dowtown_scenery:default2F.wv"
		;
connectAttr "scifi_dowtown_scenery:default2P2D.re" "scifi_dowtown_scenery:default2F.re"
		;
connectAttr "scifi_dowtown_scenery:default2P2D.of" "scifi_dowtown_scenery:default2F.of"
		;
connectAttr "scifi_dowtown_scenery:default2P2D.r" "scifi_dowtown_scenery:default2F.ro"
		;
connectAttr "scifi_dowtown_scenery:default2P2D.o" "scifi_dowtown_scenery:default2F.uv"
		;
connectAttr "scifi_dowtown_scenery:default2P2D.ofs" "scifi_dowtown_scenery:default2F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1.oc" "scifi_dowtown_scenery:default_lower_level_windows.ss"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows.msg" "scifi_dowtown_scenery:materialInfo2.sg"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1.msg" "scifi_dowtown_scenery:materialInfo2.m"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1F.msg" "scifi_dowtown_scenery:materialInfo2.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1F.oc" "scifi_dowtown_scenery:default_lower_level_windows1.c"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1P2D.c" "scifi_dowtown_scenery:default_lower_level_windows1F.c"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1P2D.tf" "scifi_dowtown_scenery:default_lower_level_windows1F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1P2D.rf" "scifi_dowtown_scenery:default_lower_level_windows1F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1P2D.s" "scifi_dowtown_scenery:default_lower_level_windows1F.s"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1P2D.wu" "scifi_dowtown_scenery:default_lower_level_windows1F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1P2D.wv" "scifi_dowtown_scenery:default_lower_level_windows1F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1P2D.re" "scifi_dowtown_scenery:default_lower_level_windows1F.re"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1P2D.of" "scifi_dowtown_scenery:default_lower_level_windows1F.of"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1P2D.r" "scifi_dowtown_scenery:default_lower_level_windows1F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1P2D.o" "scifi_dowtown_scenery:default_lower_level_windows1F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1P2D.ofs" "scifi_dowtown_scenery:default_lower_level_windows1F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows1.oc" "scifi_dowtown_scenery:default_level1_windows.ss"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows.msg" "scifi_dowtown_scenery:materialInfo3.sg"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows1.msg" "scifi_dowtown_scenery:materialInfo3.m"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows1F.msg" "scifi_dowtown_scenery:materialInfo3.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_level1_windows1F.oc" "scifi_dowtown_scenery:default_level1_windows1.c"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows1P2D.c" "scifi_dowtown_scenery:default_level1_windows1F.c"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows1P2D.tf" "scifi_dowtown_scenery:default_level1_windows1F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows1P2D.rf" "scifi_dowtown_scenery:default_level1_windows1F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows1P2D.s" "scifi_dowtown_scenery:default_level1_windows1F.s"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows1P2D.wu" "scifi_dowtown_scenery:default_level1_windows1F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows1P2D.wv" "scifi_dowtown_scenery:default_level1_windows1F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows1P2D.re" "scifi_dowtown_scenery:default_level1_windows1F.re"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows1P2D.of" "scifi_dowtown_scenery:default_level1_windows1F.of"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows1P2D.r" "scifi_dowtown_scenery:default_level1_windows1F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows1P2D.o" "scifi_dowtown_scenery:default_level1_windows1F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows1P2D.ofs" "scifi_dowtown_scenery:default_level1_windows1F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2.oc" "scifi_dowtown_scenery:default_level1_windows_1.ss"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_1.msg" "scifi_dowtown_scenery:materialInfo4.sg"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2.msg" "scifi_dowtown_scenery:materialInfo4.m"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2F.msg" "scifi_dowtown_scenery:materialInfo4.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2F.oc" "scifi_dowtown_scenery:default_level1_windows_2.c"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2P2D.c" "scifi_dowtown_scenery:default_level1_windows_2F.c"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2P2D.tf" "scifi_dowtown_scenery:default_level1_windows_2F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2P2D.rf" "scifi_dowtown_scenery:default_level1_windows_2F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2P2D.s" "scifi_dowtown_scenery:default_level1_windows_2F.s"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2P2D.wu" "scifi_dowtown_scenery:default_level1_windows_2F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2P2D.wv" "scifi_dowtown_scenery:default_level1_windows_2F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2P2D.re" "scifi_dowtown_scenery:default_level1_windows_2F.re"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2P2D.of" "scifi_dowtown_scenery:default_level1_windows_2F.of"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2P2D.r" "scifi_dowtown_scenery:default_level1_windows_2F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2P2D.o" "scifi_dowtown_scenery:default_level1_windows_2F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2P2D.ofs" "scifi_dowtown_scenery:default_level1_windows_2F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_wall2.oc" "scifi_dowtown_scenery:default_wall1.ss"
		;
connectAttr "scifi_dowtown_scenery:default_wall1.msg" "scifi_dowtown_scenery:materialInfo5.sg"
		;
connectAttr "scifi_dowtown_scenery:default_wall2.msg" "scifi_dowtown_scenery:materialInfo5.m"
		;
connectAttr "scifi_dowtown_scenery:default_wall2F.msg" "scifi_dowtown_scenery:materialInfo5.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_wall2F.oc" "scifi_dowtown_scenery:default_wall2.c"
		;
connectAttr "scifi_dowtown_scenery:default_wall2P2D.c" "scifi_dowtown_scenery:default_wall2F.c"
		;
connectAttr "scifi_dowtown_scenery:default_wall2P2D.tf" "scifi_dowtown_scenery:default_wall2F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_wall2P2D.rf" "scifi_dowtown_scenery:default_wall2F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_wall2P2D.s" "scifi_dowtown_scenery:default_wall2F.s"
		;
connectAttr "scifi_dowtown_scenery:default_wall2P2D.wu" "scifi_dowtown_scenery:default_wall2F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_wall2P2D.wv" "scifi_dowtown_scenery:default_wall2F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_wall2P2D.re" "scifi_dowtown_scenery:default_wall2F.re"
		;
connectAttr "scifi_dowtown_scenery:default_wall2P2D.of" "scifi_dowtown_scenery:default_wall2F.of"
		;
connectAttr "scifi_dowtown_scenery:default_wall2P2D.r" "scifi_dowtown_scenery:default_wall2F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_wall2P2D.o" "scifi_dowtown_scenery:default_wall2F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_wall2P2D.ofs" "scifi_dowtown_scenery:default_wall2F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_windows1.oc" "scifi_dowtown_scenery:default_windows.ss"
		;
connectAttr "scifi_dowtown_scenery:default_windows.msg" "scifi_dowtown_scenery:materialInfo6.sg"
		;
connectAttr "scifi_dowtown_scenery:default_windows1.msg" "scifi_dowtown_scenery:materialInfo6.m"
		;
connectAttr "scifi_dowtown_scenery:default_balcony_tubbing1.oc" "scifi_dowtown_scenery:default_balcony_tubbing.ss"
		;
connectAttr "scifi_dowtown_scenery:default_balcony_tubbing.msg" "scifi_dowtown_scenery:materialInfo7.sg"
		;
connectAttr "scifi_dowtown_scenery:default_balcony_tubbing1.msg" "scifi_dowtown_scenery:materialInfo7.m"
		;
connectAttr "scifi_dowtown_scenery:default_floor1.oc" "scifi_dowtown_scenery:default_floor.ss"
		;
connectAttr "scifi_dowtown_scenery:default_floor.msg" "scifi_dowtown_scenery:materialInfo8.sg"
		;
connectAttr "scifi_dowtown_scenery:default_floor1.msg" "scifi_dowtown_scenery:materialInfo8.m"
		;
connectAttr "scifi_dowtown_scenery:default_floor1F.msg" "scifi_dowtown_scenery:materialInfo8.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_floor1F.oc" "scifi_dowtown_scenery:default_floor1.c"
		;
connectAttr "scifi_dowtown_scenery:default_floor1P2D.c" "scifi_dowtown_scenery:default_floor1F.c"
		;
connectAttr "scifi_dowtown_scenery:default_floor1P2D.tf" "scifi_dowtown_scenery:default_floor1F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_floor1P2D.rf" "scifi_dowtown_scenery:default_floor1F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_floor1P2D.s" "scifi_dowtown_scenery:default_floor1F.s"
		;
connectAttr "scifi_dowtown_scenery:default_floor1P2D.wu" "scifi_dowtown_scenery:default_floor1F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_floor1P2D.wv" "scifi_dowtown_scenery:default_floor1F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_floor1P2D.re" "scifi_dowtown_scenery:default_floor1F.re"
		;
connectAttr "scifi_dowtown_scenery:default_floor1P2D.of" "scifi_dowtown_scenery:default_floor1F.of"
		;
connectAttr "scifi_dowtown_scenery:default_floor1P2D.r" "scifi_dowtown_scenery:default_floor1F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_floor1P2D.o" "scifi_dowtown_scenery:default_floor1F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_floor1P2D.ofs" "scifi_dowtown_scenery:default_floor1F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_roofs1.oc" "scifi_dowtown_scenery:default_roofs.ss"
		;
connectAttr "scifi_dowtown_scenery:default_roofs.msg" "scifi_dowtown_scenery:materialInfo9.sg"
		;
connectAttr "scifi_dowtown_scenery:default_roofs1.msg" "scifi_dowtown_scenery:materialInfo9.m"
		;
connectAttr "scifi_dowtown_scenery:default_roofs1F.msg" "scifi_dowtown_scenery:materialInfo9.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_roofs1F.oc" "scifi_dowtown_scenery:default_roofs1.c"
		;
connectAttr "scifi_dowtown_scenery:default_roofs1P2D.c" "scifi_dowtown_scenery:default_roofs1F.c"
		;
connectAttr "scifi_dowtown_scenery:default_roofs1P2D.tf" "scifi_dowtown_scenery:default_roofs1F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_roofs1P2D.rf" "scifi_dowtown_scenery:default_roofs1F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_roofs1P2D.s" "scifi_dowtown_scenery:default_roofs1F.s"
		;
connectAttr "scifi_dowtown_scenery:default_roofs1P2D.wu" "scifi_dowtown_scenery:default_roofs1F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_roofs1P2D.wv" "scifi_dowtown_scenery:default_roofs1F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_roofs1P2D.re" "scifi_dowtown_scenery:default_roofs1F.re"
		;
connectAttr "scifi_dowtown_scenery:default_roofs1P2D.of" "scifi_dowtown_scenery:default_roofs1F.of"
		;
connectAttr "scifi_dowtown_scenery:default_roofs1P2D.r" "scifi_dowtown_scenery:default_roofs1F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_roofs1P2D.o" "scifi_dowtown_scenery:default_roofs1F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_roofs1P2D.ofs" "scifi_dowtown_scenery:default_roofs1F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_wall4.oc" "scifi_dowtown_scenery:default_wall3.ss"
		;
connectAttr "scifi_dowtown_scenery:default_wall3.msg" "scifi_dowtown_scenery:materialInfo10.sg"
		;
connectAttr "scifi_dowtown_scenery:default_wall4.msg" "scifi_dowtown_scenery:materialInfo10.m"
		;
connectAttr "scifi_dowtown_scenery:default_wall4F.msg" "scifi_dowtown_scenery:materialInfo10.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_wall4F.oc" "scifi_dowtown_scenery:default_wall4.c"
		;
connectAttr "scifi_dowtown_scenery:default_wall4P2D.c" "scifi_dowtown_scenery:default_wall4F.c"
		;
connectAttr "scifi_dowtown_scenery:default_wall4P2D.tf" "scifi_dowtown_scenery:default_wall4F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_wall4P2D.rf" "scifi_dowtown_scenery:default_wall4F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_wall4P2D.s" "scifi_dowtown_scenery:default_wall4F.s"
		;
connectAttr "scifi_dowtown_scenery:default_wall4P2D.wu" "scifi_dowtown_scenery:default_wall4F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_wall4P2D.wv" "scifi_dowtown_scenery:default_wall4F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_wall4P2D.re" "scifi_dowtown_scenery:default_wall4F.re"
		;
connectAttr "scifi_dowtown_scenery:default_wall4P2D.of" "scifi_dowtown_scenery:default_wall4F.of"
		;
connectAttr "scifi_dowtown_scenery:default_wall4P2D.r" "scifi_dowtown_scenery:default_wall4F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_wall4P2D.o" "scifi_dowtown_scenery:default_wall4F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_wall4P2D.ofs" "scifi_dowtown_scenery:default_wall4F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1.oc" "scifi_dowtown_scenery:default_bldg2b.ss"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b.msg" "scifi_dowtown_scenery:materialInfo11.sg"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1.msg" "scifi_dowtown_scenery:materialInfo11.m"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1F.msg" "scifi_dowtown_scenery:materialInfo11.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg2b1F.oc" "scifi_dowtown_scenery:default_bldg2b1.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1P2D.c" "scifi_dowtown_scenery:default_bldg2b1F.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1P2D.tf" "scifi_dowtown_scenery:default_bldg2b1F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1P2D.rf" "scifi_dowtown_scenery:default_bldg2b1F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1P2D.s" "scifi_dowtown_scenery:default_bldg2b1F.s"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1P2D.wu" "scifi_dowtown_scenery:default_bldg2b1F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1P2D.wv" "scifi_dowtown_scenery:default_bldg2b1F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1P2D.re" "scifi_dowtown_scenery:default_bldg2b1F.re"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1P2D.of" "scifi_dowtown_scenery:default_bldg2b1F.of"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1P2D.r" "scifi_dowtown_scenery:default_bldg2b1F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1P2D.o" "scifi_dowtown_scenery:default_bldg2b1F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1P2D.ofs" "scifi_dowtown_scenery:default_bldg2b1F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1.oc" "scifi_dowtown_scenery:default_windos_bldg2b.ss"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b.msg" "scifi_dowtown_scenery:materialInfo12.sg"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1.msg" "scifi_dowtown_scenery:materialInfo12.m"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1F.msg" "scifi_dowtown_scenery:materialInfo12.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1F.oc" "scifi_dowtown_scenery:default_windos_bldg2b1.c"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1P2D.c" "scifi_dowtown_scenery:default_windos_bldg2b1F.c"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1P2D.tf" "scifi_dowtown_scenery:default_windos_bldg2b1F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1P2D.rf" "scifi_dowtown_scenery:default_windos_bldg2b1F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1P2D.s" "scifi_dowtown_scenery:default_windos_bldg2b1F.s"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1P2D.wu" "scifi_dowtown_scenery:default_windos_bldg2b1F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1P2D.wv" "scifi_dowtown_scenery:default_windos_bldg2b1F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1P2D.re" "scifi_dowtown_scenery:default_windos_bldg2b1F.re"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1P2D.of" "scifi_dowtown_scenery:default_windos_bldg2b1F.of"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1P2D.r" "scifi_dowtown_scenery:default_windos_bldg2b1F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1P2D.o" "scifi_dowtown_scenery:default_windos_bldg2b1F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1P2D.ofs" "scifi_dowtown_scenery:default_windos_bldg2b1F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_bldg4.oc" "scifi_dowtown_scenery:default_bldg3.ss"
		;
connectAttr "scifi_dowtown_scenery:default_bldg3.msg" "scifi_dowtown_scenery:materialInfo13.sg"
		;
connectAttr "scifi_dowtown_scenery:default_bldg4.msg" "scifi_dowtown_scenery:materialInfo13.m"
		;
connectAttr "scifi_dowtown_scenery:default_bldg4F.msg" "scifi_dowtown_scenery:materialInfo13.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg4F.oc" "scifi_dowtown_scenery:default_bldg4.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg4P2D.c" "scifi_dowtown_scenery:default_bldg4F.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg4P2D.tf" "scifi_dowtown_scenery:default_bldg4F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg4P2D.rf" "scifi_dowtown_scenery:default_bldg4F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg4P2D.s" "scifi_dowtown_scenery:default_bldg4F.s"
		;
connectAttr "scifi_dowtown_scenery:default_bldg4P2D.wu" "scifi_dowtown_scenery:default_bldg4F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_bldg4P2D.wv" "scifi_dowtown_scenery:default_bldg4F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg4P2D.re" "scifi_dowtown_scenery:default_bldg4F.re"
		;
connectAttr "scifi_dowtown_scenery:default_bldg4P2D.of" "scifi_dowtown_scenery:default_bldg4F.of"
		;
connectAttr "scifi_dowtown_scenery:default_bldg4P2D.r" "scifi_dowtown_scenery:default_bldg4F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_bldg4P2D.o" "scifi_dowtown_scenery:default_bldg4F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg4P2D.ofs" "scifi_dowtown_scenery:default_bldg4F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4.oc" "scifi_dowtown_scenery:default_windows_bldg3.ss"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg3.msg" "scifi_dowtown_scenery:materialInfo14.sg"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4.msg" "scifi_dowtown_scenery:materialInfo14.m"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4F.msg" "scifi_dowtown_scenery:materialInfo14.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4F.oc" "scifi_dowtown_scenery:default_windows_bldg4.c"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4P2D.c" "scifi_dowtown_scenery:default_windows_bldg4F.c"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4P2D.tf" "scifi_dowtown_scenery:default_windows_bldg4F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4P2D.rf" "scifi_dowtown_scenery:default_windows_bldg4F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4P2D.s" "scifi_dowtown_scenery:default_windows_bldg4F.s"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4P2D.wu" "scifi_dowtown_scenery:default_windows_bldg4F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4P2D.wv" "scifi_dowtown_scenery:default_windows_bldg4F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4P2D.re" "scifi_dowtown_scenery:default_windows_bldg4F.re"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4P2D.of" "scifi_dowtown_scenery:default_windows_bldg4F.of"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4P2D.r" "scifi_dowtown_scenery:default_windows_bldg4F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4P2D.o" "scifi_dowtown_scenery:default_windows_bldg4F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4P2D.ofs" "scifi_dowtown_scenery:default_windows_bldg4F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_bldg6.oc" "scifi_dowtown_scenery:default_bldg5.ss"
		;
connectAttr "scifi_dowtown_scenery:default_bldg5.msg" "scifi_dowtown_scenery:materialInfo15.sg"
		;
connectAttr "scifi_dowtown_scenery:default_bldg6.msg" "scifi_dowtown_scenery:materialInfo15.m"
		;
connectAttr "scifi_dowtown_scenery:default_bldg6F.msg" "scifi_dowtown_scenery:materialInfo15.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg6F.oc" "scifi_dowtown_scenery:default_bldg6.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg6P2D.c" "scifi_dowtown_scenery:default_bldg6F.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg6P2D.tf" "scifi_dowtown_scenery:default_bldg6F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg6P2D.rf" "scifi_dowtown_scenery:default_bldg6F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg6P2D.s" "scifi_dowtown_scenery:default_bldg6F.s"
		;
connectAttr "scifi_dowtown_scenery:default_bldg6P2D.wu" "scifi_dowtown_scenery:default_bldg6F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_bldg6P2D.wv" "scifi_dowtown_scenery:default_bldg6F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg6P2D.re" "scifi_dowtown_scenery:default_bldg6F.re"
		;
connectAttr "scifi_dowtown_scenery:default_bldg6P2D.of" "scifi_dowtown_scenery:default_bldg6F.of"
		;
connectAttr "scifi_dowtown_scenery:default_bldg6P2D.r" "scifi_dowtown_scenery:default_bldg6F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_bldg6P2D.o" "scifi_dowtown_scenery:default_bldg6F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg6P2D.ofs" "scifi_dowtown_scenery:default_bldg6F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6.oc" "scifi_dowtown_scenery:default_windows_bldg5.ss"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg5.msg" "scifi_dowtown_scenery:materialInfo16.sg"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6.msg" "scifi_dowtown_scenery:materialInfo16.m"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6F.msg" "scifi_dowtown_scenery:materialInfo16.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6F.oc" "scifi_dowtown_scenery:default_windows_bldg6.c"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6P2D.c" "scifi_dowtown_scenery:default_windows_bldg6F.c"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6P2D.tf" "scifi_dowtown_scenery:default_windows_bldg6F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6P2D.rf" "scifi_dowtown_scenery:default_windows_bldg6F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6P2D.s" "scifi_dowtown_scenery:default_windows_bldg6F.s"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6P2D.wu" "scifi_dowtown_scenery:default_windows_bldg6F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6P2D.wv" "scifi_dowtown_scenery:default_windows_bldg6F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6P2D.re" "scifi_dowtown_scenery:default_windows_bldg6F.re"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6P2D.of" "scifi_dowtown_scenery:default_windows_bldg6F.of"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6P2D.r" "scifi_dowtown_scenery:default_windows_bldg6F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6P2D.o" "scifi_dowtown_scenery:default_windows_bldg6F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6P2D.ofs" "scifi_dowtown_scenery:default_windows_bldg6F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_bldg8.oc" "scifi_dowtown_scenery:default_bldg7.ss"
		;
connectAttr "scifi_dowtown_scenery:default_bldg7.msg" "scifi_dowtown_scenery:materialInfo17.sg"
		;
connectAttr "scifi_dowtown_scenery:default_bldg8.msg" "scifi_dowtown_scenery:materialInfo17.m"
		;
connectAttr "scifi_dowtown_scenery:default_bldg8F.msg" "scifi_dowtown_scenery:materialInfo17.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg8F.oc" "scifi_dowtown_scenery:default_bldg8.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg8P2D.c" "scifi_dowtown_scenery:default_bldg8F.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg8P2D.tf" "scifi_dowtown_scenery:default_bldg8F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg8P2D.rf" "scifi_dowtown_scenery:default_bldg8F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg8P2D.s" "scifi_dowtown_scenery:default_bldg8F.s"
		;
connectAttr "scifi_dowtown_scenery:default_bldg8P2D.wu" "scifi_dowtown_scenery:default_bldg8F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_bldg8P2D.wv" "scifi_dowtown_scenery:default_bldg8F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg8P2D.re" "scifi_dowtown_scenery:default_bldg8F.re"
		;
connectAttr "scifi_dowtown_scenery:default_bldg8P2D.of" "scifi_dowtown_scenery:default_bldg8F.of"
		;
connectAttr "scifi_dowtown_scenery:default_bldg8P2D.r" "scifi_dowtown_scenery:default_bldg8F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_bldg8P2D.o" "scifi_dowtown_scenery:default_bldg8F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg8P2D.ofs" "scifi_dowtown_scenery:default_bldg8F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8.oc" "scifi_dowtown_scenery:default_windows_bldg7.ss"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg7.msg" "scifi_dowtown_scenery:materialInfo18.sg"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8.msg" "scifi_dowtown_scenery:materialInfo18.m"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8F.msg" "scifi_dowtown_scenery:materialInfo18.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8F.oc" "scifi_dowtown_scenery:default_windows_bldg8.c"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8P2D.c" "scifi_dowtown_scenery:default_windows_bldg8F.c"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8P2D.tf" "scifi_dowtown_scenery:default_windows_bldg8F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8P2D.rf" "scifi_dowtown_scenery:default_windows_bldg8F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8P2D.s" "scifi_dowtown_scenery:default_windows_bldg8F.s"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8P2D.wu" "scifi_dowtown_scenery:default_windows_bldg8F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8P2D.wv" "scifi_dowtown_scenery:default_windows_bldg8F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8P2D.re" "scifi_dowtown_scenery:default_windows_bldg8F.re"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8P2D.of" "scifi_dowtown_scenery:default_windows_bldg8F.of"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8P2D.r" "scifi_dowtown_scenery:default_windows_bldg8F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8P2D.o" "scifi_dowtown_scenery:default_windows_bldg8F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8P2D.ofs" "scifi_dowtown_scenery:default_windows_bldg8F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_bldg10.oc" "scifi_dowtown_scenery:default_bldg9.ss"
		;
connectAttr "scifi_dowtown_scenery:default_bldg9.msg" "scifi_dowtown_scenery:materialInfo19.sg"
		;
connectAttr "scifi_dowtown_scenery:default_bldg10.msg" "scifi_dowtown_scenery:materialInfo19.m"
		;
connectAttr "scifi_dowtown_scenery:default_bldg10F.msg" "scifi_dowtown_scenery:materialInfo19.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg10F.oc" "scifi_dowtown_scenery:default_bldg10.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg10P2D.c" "scifi_dowtown_scenery:default_bldg10F.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg10P2D.tf" "scifi_dowtown_scenery:default_bldg10F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg10P2D.rf" "scifi_dowtown_scenery:default_bldg10F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg10P2D.s" "scifi_dowtown_scenery:default_bldg10F.s"
		;
connectAttr "scifi_dowtown_scenery:default_bldg10P2D.wu" "scifi_dowtown_scenery:default_bldg10F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_bldg10P2D.wv" "scifi_dowtown_scenery:default_bldg10F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg10P2D.re" "scifi_dowtown_scenery:default_bldg10F.re"
		;
connectAttr "scifi_dowtown_scenery:default_bldg10P2D.of" "scifi_dowtown_scenery:default_bldg10F.of"
		;
connectAttr "scifi_dowtown_scenery:default_bldg10P2D.r" "scifi_dowtown_scenery:default_bldg10F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_bldg10P2D.o" "scifi_dowtown_scenery:default_bldg10F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg10P2D.ofs" "scifi_dowtown_scenery:default_bldg10F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10.oc" "scifi_dowtown_scenery:default_windows_bldg9.ss"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg9.msg" "scifi_dowtown_scenery:materialInfo20.sg"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10.msg" "scifi_dowtown_scenery:materialInfo20.m"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10F.msg" "scifi_dowtown_scenery:materialInfo20.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10F.oc" "scifi_dowtown_scenery:default_windows_bldg10.c"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10P2D.c" "scifi_dowtown_scenery:default_windows_bldg10F.c"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10P2D.tf" "scifi_dowtown_scenery:default_windows_bldg10F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10P2D.rf" "scifi_dowtown_scenery:default_windows_bldg10F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10P2D.s" "scifi_dowtown_scenery:default_windows_bldg10F.s"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10P2D.wu" "scifi_dowtown_scenery:default_windows_bldg10F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10P2D.wv" "scifi_dowtown_scenery:default_windows_bldg10F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10P2D.re" "scifi_dowtown_scenery:default_windows_bldg10F.re"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10P2D.of" "scifi_dowtown_scenery:default_windows_bldg10F.of"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10P2D.r" "scifi_dowtown_scenery:default_windows_bldg10F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10P2D.o" "scifi_dowtown_scenery:default_windows_bldg10F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10P2D.ofs" "scifi_dowtown_scenery:default_windows_bldg10F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_bldg12.oc" "scifi_dowtown_scenery:default_bldg11.ss"
		;
connectAttr "scifi_dowtown_scenery:default_bldg11.msg" "scifi_dowtown_scenery:materialInfo21.sg"
		;
connectAttr "scifi_dowtown_scenery:default_bldg12.msg" "scifi_dowtown_scenery:materialInfo21.m"
		;
connectAttr "scifi_dowtown_scenery:default_bldg12F.msg" "scifi_dowtown_scenery:materialInfo21.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg12F.oc" "scifi_dowtown_scenery:default_bldg12.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg12P2D.c" "scifi_dowtown_scenery:default_bldg12F.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg12P2D.tf" "scifi_dowtown_scenery:default_bldg12F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg12P2D.rf" "scifi_dowtown_scenery:default_bldg12F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg12P2D.s" "scifi_dowtown_scenery:default_bldg12F.s"
		;
connectAttr "scifi_dowtown_scenery:default_bldg12P2D.wu" "scifi_dowtown_scenery:default_bldg12F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_bldg12P2D.wv" "scifi_dowtown_scenery:default_bldg12F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg12P2D.re" "scifi_dowtown_scenery:default_bldg12F.re"
		;
connectAttr "scifi_dowtown_scenery:default_bldg12P2D.of" "scifi_dowtown_scenery:default_bldg12F.of"
		;
connectAttr "scifi_dowtown_scenery:default_bldg12P2D.r" "scifi_dowtown_scenery:default_bldg12F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_bldg12P2D.o" "scifi_dowtown_scenery:default_bldg12F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg12P2D.ofs" "scifi_dowtown_scenery:default_bldg12F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12.oc" "scifi_dowtown_scenery:default_windows_bldg11.ss"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg11.msg" "scifi_dowtown_scenery:materialInfo22.sg"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12.msg" "scifi_dowtown_scenery:materialInfo22.m"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12F.msg" "scifi_dowtown_scenery:materialInfo22.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12F.oc" "scifi_dowtown_scenery:default_windows_bldg12.c"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12P2D.c" "scifi_dowtown_scenery:default_windows_bldg12F.c"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12P2D.tf" "scifi_dowtown_scenery:default_windows_bldg12F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12P2D.rf" "scifi_dowtown_scenery:default_windows_bldg12F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12P2D.s" "scifi_dowtown_scenery:default_windows_bldg12F.s"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12P2D.wu" "scifi_dowtown_scenery:default_windows_bldg12F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12P2D.wv" "scifi_dowtown_scenery:default_windows_bldg12F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12P2D.re" "scifi_dowtown_scenery:default_windows_bldg12F.re"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12P2D.of" "scifi_dowtown_scenery:default_windows_bldg12F.of"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12P2D.r" "scifi_dowtown_scenery:default_windows_bldg12F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12P2D.o" "scifi_dowtown_scenery:default_windows_bldg12F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12P2D.ofs" "scifi_dowtown_scenery:default_windows_bldg12F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_bldg14.oc" "scifi_dowtown_scenery:default_bldg13.ss"
		;
connectAttr "scifi_dowtown_scenery:default_bldg13.msg" "scifi_dowtown_scenery:materialInfo23.sg"
		;
connectAttr "scifi_dowtown_scenery:default_bldg14.msg" "scifi_dowtown_scenery:materialInfo23.m"
		;
connectAttr "scifi_dowtown_scenery:default_bldg14F.msg" "scifi_dowtown_scenery:materialInfo23.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg14F.oc" "scifi_dowtown_scenery:default_bldg14.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg14P2D.c" "scifi_dowtown_scenery:default_bldg14F.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg14P2D.tf" "scifi_dowtown_scenery:default_bldg14F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg14P2D.rf" "scifi_dowtown_scenery:default_bldg14F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg14P2D.s" "scifi_dowtown_scenery:default_bldg14F.s"
		;
connectAttr "scifi_dowtown_scenery:default_bldg14P2D.wu" "scifi_dowtown_scenery:default_bldg14F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_bldg14P2D.wv" "scifi_dowtown_scenery:default_bldg14F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg14P2D.re" "scifi_dowtown_scenery:default_bldg14F.re"
		;
connectAttr "scifi_dowtown_scenery:default_bldg14P2D.of" "scifi_dowtown_scenery:default_bldg14F.of"
		;
connectAttr "scifi_dowtown_scenery:default_bldg14P2D.r" "scifi_dowtown_scenery:default_bldg14F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_bldg14P2D.o" "scifi_dowtown_scenery:default_bldg14F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg14P2D.ofs" "scifi_dowtown_scenery:default_bldg14F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_bldg15.oc" "scifi_dowtown_scenery:default_bldg.ss"
		;
connectAttr "scifi_dowtown_scenery:default_bldg.msg" "scifi_dowtown_scenery:materialInfo24.sg"
		;
connectAttr "scifi_dowtown_scenery:default_bldg15.msg" "scifi_dowtown_scenery:materialInfo24.m"
		;
connectAttr "scifi_dowtown_scenery:default_bldg15F.msg" "scifi_dowtown_scenery:materialInfo24.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg15F.oc" "scifi_dowtown_scenery:default_bldg15.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg15P2D.c" "scifi_dowtown_scenery:default_bldg15F.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldg15P2D.tf" "scifi_dowtown_scenery:default_bldg15F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg15P2D.rf" "scifi_dowtown_scenery:default_bldg15F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_bldg15P2D.s" "scifi_dowtown_scenery:default_bldg15F.s"
		;
connectAttr "scifi_dowtown_scenery:default_bldg15P2D.wu" "scifi_dowtown_scenery:default_bldg15F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_bldg15P2D.wv" "scifi_dowtown_scenery:default_bldg15F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg15P2D.re" "scifi_dowtown_scenery:default_bldg15F.re"
		;
connectAttr "scifi_dowtown_scenery:default_bldg15P2D.of" "scifi_dowtown_scenery:default_bldg15F.of"
		;
connectAttr "scifi_dowtown_scenery:default_bldg15P2D.r" "scifi_dowtown_scenery:default_bldg15F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_bldg15P2D.o" "scifi_dowtown_scenery:default_bldg15F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_bldg15P2D.ofs" "scifi_dowtown_scenery:default_bldg15F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1.oc" "scifi_dowtown_scenery:default_bldgs_side.ss"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side.msg" "scifi_dowtown_scenery:materialInfo25.sg"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1.msg" "scifi_dowtown_scenery:materialInfo25.m"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1F.msg" "scifi_dowtown_scenery:materialInfo25.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1F.oc" "scifi_dowtown_scenery:default_bldgs_side1.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1P2D.c" "scifi_dowtown_scenery:default_bldgs_side1F.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1P2D.tf" "scifi_dowtown_scenery:default_bldgs_side1F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1P2D.rf" "scifi_dowtown_scenery:default_bldgs_side1F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1P2D.s" "scifi_dowtown_scenery:default_bldgs_side1F.s"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1P2D.wu" "scifi_dowtown_scenery:default_bldgs_side1F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1P2D.wv" "scifi_dowtown_scenery:default_bldgs_side1F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1P2D.re" "scifi_dowtown_scenery:default_bldgs_side1F.re"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1P2D.of" "scifi_dowtown_scenery:default_bldgs_side1F.of"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1P2D.r" "scifi_dowtown_scenery:default_bldgs_side1F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1P2D.o" "scifi_dowtown_scenery:default_bldgs_side1F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1P2D.ofs" "scifi_dowtown_scenery:default_bldgs_side1F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1.oc" "scifi_dowtown_scenery:default_sector_sidewalk.ss"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk.msg" "scifi_dowtown_scenery:materialInfo26.sg"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1.msg" "scifi_dowtown_scenery:materialInfo26.m"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1F.msg" "scifi_dowtown_scenery:materialInfo26.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1F.oc" "scifi_dowtown_scenery:default_sector_sidewalk1.c"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1P2D.c" "scifi_dowtown_scenery:default_sector_sidewalk1F.c"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1P2D.tf" "scifi_dowtown_scenery:default_sector_sidewalk1F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1P2D.rf" "scifi_dowtown_scenery:default_sector_sidewalk1F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1P2D.s" "scifi_dowtown_scenery:default_sector_sidewalk1F.s"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1P2D.wu" "scifi_dowtown_scenery:default_sector_sidewalk1F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1P2D.wv" "scifi_dowtown_scenery:default_sector_sidewalk1F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1P2D.re" "scifi_dowtown_scenery:default_sector_sidewalk1F.re"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1P2D.of" "scifi_dowtown_scenery:default_sector_sidewalk1F.of"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1P2D.r" "scifi_dowtown_scenery:default_sector_sidewalk1F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1P2D.o" "scifi_dowtown_scenery:default_sector_sidewalk1F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1P2D.ofs" "scifi_dowtown_scenery:default_sector_sidewalk1F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_sector1.oc" "scifi_dowtown_scenery:default_sector.ss"
		;
connectAttr "scifi_dowtown_scenery:default_sector.msg" "scifi_dowtown_scenery:materialInfo27.sg"
		;
connectAttr "scifi_dowtown_scenery:default_sector1.msg" "scifi_dowtown_scenery:materialInfo27.m"
		;
connectAttr "scifi_dowtown_scenery:default_sector1F.msg" "scifi_dowtown_scenery:materialInfo27.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_sector1F.oc" "scifi_dowtown_scenery:default_sector1.c"
		;
connectAttr "scifi_dowtown_scenery:default_sector1P2D.c" "scifi_dowtown_scenery:default_sector1F.c"
		;
connectAttr "scifi_dowtown_scenery:default_sector1P2D.tf" "scifi_dowtown_scenery:default_sector1F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_sector1P2D.rf" "scifi_dowtown_scenery:default_sector1F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_sector1P2D.s" "scifi_dowtown_scenery:default_sector1F.s"
		;
connectAttr "scifi_dowtown_scenery:default_sector1P2D.wu" "scifi_dowtown_scenery:default_sector1F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_sector1P2D.wv" "scifi_dowtown_scenery:default_sector1F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_sector1P2D.re" "scifi_dowtown_scenery:default_sector1F.re"
		;
connectAttr "scifi_dowtown_scenery:default_sector1P2D.of" "scifi_dowtown_scenery:default_sector1F.of"
		;
connectAttr "scifi_dowtown_scenery:default_sector1P2D.r" "scifi_dowtown_scenery:default_sector1F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_sector1P2D.o" "scifi_dowtown_scenery:default_sector1F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_sector1P2D.ofs" "scifi_dowtown_scenery:default_sector1F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1.oc" "scifi_dowtown_scenery:default_electrical___tubbing.ss"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing.msg" "scifi_dowtown_scenery:materialInfo28.sg"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1.msg" "scifi_dowtown_scenery:materialInfo28.m"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1F.msg" "scifi_dowtown_scenery:materialInfo28.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1F.oc" "scifi_dowtown_scenery:default_electrical___tubbing1.c"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1P2D.c" "scifi_dowtown_scenery:default_electrical___tubbing1F.c"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1P2D.tf" "scifi_dowtown_scenery:default_electrical___tubbing1F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1P2D.rf" "scifi_dowtown_scenery:default_electrical___tubbing1F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1P2D.s" "scifi_dowtown_scenery:default_electrical___tubbing1F.s"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1P2D.wu" "scifi_dowtown_scenery:default_electrical___tubbing1F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1P2D.wv" "scifi_dowtown_scenery:default_electrical___tubbing1F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1P2D.re" "scifi_dowtown_scenery:default_electrical___tubbing1F.re"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1P2D.of" "scifi_dowtown_scenery:default_electrical___tubbing1F.of"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1P2D.r" "scifi_dowtown_scenery:default_electrical___tubbing1F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1P2D.o" "scifi_dowtown_scenery:default_electrical___tubbing1F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1P2D.ofs" "scifi_dowtown_scenery:default_electrical___tubbing1F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1.oc" "scifi_dowtown_scenery:default_bldgs_under_street.ss"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street.msg" "scifi_dowtown_scenery:materialInfo29.sg"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1.msg" "scifi_dowtown_scenery:materialInfo29.m"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1F.msg" "scifi_dowtown_scenery:materialInfo29.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1F.oc" "scifi_dowtown_scenery:default_bldgs_under_street1.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1P2D.c" "scifi_dowtown_scenery:default_bldgs_under_street1F.c"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1P2D.tf" "scifi_dowtown_scenery:default_bldgs_under_street1F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1P2D.rf" "scifi_dowtown_scenery:default_bldgs_under_street1F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1P2D.s" "scifi_dowtown_scenery:default_bldgs_under_street1F.s"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1P2D.wu" "scifi_dowtown_scenery:default_bldgs_under_street1F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1P2D.wv" "scifi_dowtown_scenery:default_bldgs_under_street1F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1P2D.re" "scifi_dowtown_scenery:default_bldgs_under_street1F.re"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1P2D.of" "scifi_dowtown_scenery:default_bldgs_under_street1F.of"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1P2D.r" "scifi_dowtown_scenery:default_bldgs_under_street1F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1P2D.o" "scifi_dowtown_scenery:default_bldgs_under_street1F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1P2D.ofs" "scifi_dowtown_scenery:default_bldgs_under_street1F.fs"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1.oc" "scifi_dowtown_scenery:default_under_level_floor.ss"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor.msg" "scifi_dowtown_scenery:materialInfo30.sg"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1.msg" "scifi_dowtown_scenery:materialInfo30.m"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1F.msg" "scifi_dowtown_scenery:materialInfo30.t"
		 -na;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1F.oc" "scifi_dowtown_scenery:default_under_level_floor1.c"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1P2D.c" "scifi_dowtown_scenery:default_under_level_floor1F.c"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1P2D.tf" "scifi_dowtown_scenery:default_under_level_floor1F.tf"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1P2D.rf" "scifi_dowtown_scenery:default_under_level_floor1F.rf"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1P2D.s" "scifi_dowtown_scenery:default_under_level_floor1F.s"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1P2D.wu" "scifi_dowtown_scenery:default_under_level_floor1F.wu"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1P2D.wv" "scifi_dowtown_scenery:default_under_level_floor1F.wv"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1P2D.re" "scifi_dowtown_scenery:default_under_level_floor1F.re"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1P2D.of" "scifi_dowtown_scenery:default_under_level_floor1F.of"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1P2D.r" "scifi_dowtown_scenery:default_under_level_floor1F.ro"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1P2D.o" "scifi_dowtown_scenery:default_under_level_floor1F.uv"
		;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1P2D.ofs" "scifi_dowtown_scenery:default_under_level_floor1F.fs"
		;
connectAttr "scifi_dowtown_scenery:default1.pa" ":renderPartition.st" -na;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows.pa" ":renderPartition.st"
		 -na;
connectAttr "scifi_dowtown_scenery:default_level1_windows.pa" ":renderPartition.st"
		 -na;
connectAttr "scifi_dowtown_scenery:default_level1_windows_1.pa" ":renderPartition.st"
		 -na;
connectAttr "scifi_dowtown_scenery:default_wall1.pa" ":renderPartition.st" -na;
connectAttr "scifi_dowtown_scenery:default_windows.pa" ":renderPartition.st" -na
		;
connectAttr "scifi_dowtown_scenery:default_balcony_tubbing.pa" ":renderPartition.st"
		 -na;
connectAttr "scifi_dowtown_scenery:default_floor.pa" ":renderPartition.st" -na;
connectAttr "scifi_dowtown_scenery:default_roofs.pa" ":renderPartition.st" -na;
connectAttr "scifi_dowtown_scenery:default_wall3.pa" ":renderPartition.st" -na;
connectAttr "scifi_dowtown_scenery:default_bldg2b.pa" ":renderPartition.st" -na;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b.pa" ":renderPartition.st"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg3.pa" ":renderPartition.st" -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg3.pa" ":renderPartition.st"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg5.pa" ":renderPartition.st" -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg5.pa" ":renderPartition.st"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg7.pa" ":renderPartition.st" -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg7.pa" ":renderPartition.st"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg9.pa" ":renderPartition.st" -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg9.pa" ":renderPartition.st"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg11.pa" ":renderPartition.st" -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg11.pa" ":renderPartition.st"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg13.pa" ":renderPartition.st" -na;
connectAttr "scifi_dowtown_scenery:default_bldg.pa" ":renderPartition.st" -na;
connectAttr "scifi_dowtown_scenery:default_bldgs_side.pa" ":renderPartition.st" 
		-na;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk.pa" ":renderPartition.st"
		 -na;
connectAttr "scifi_dowtown_scenery:default_sector.pa" ":renderPartition.st" -na;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing.pa" ":renderPartition.st"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street.pa" ":renderPartition.st"
		 -na;
connectAttr "scifi_dowtown_scenery:default_under_level_floor.pa" ":renderPartition.st"
		 -na;
connectAttr "scifi_dowtown_scenery:default2.msg" ":defaultShaderList1.s" -na;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_level1_windows1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_wall2.msg" ":defaultShaderList1.s" -na
		;
connectAttr "scifi_dowtown_scenery:default_windows1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_balcony_tubbing1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_floor1.msg" ":defaultShaderList1.s" -na
		;
connectAttr "scifi_dowtown_scenery:default_roofs1.msg" ":defaultShaderList1.s" -na
		;
connectAttr "scifi_dowtown_scenery:default_wall4.msg" ":defaultShaderList1.s" -na
		;
connectAttr "scifi_dowtown_scenery:default_bldg2b1.msg" ":defaultShaderList1.s" 
		-na;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg4.msg" ":defaultShaderList1.s" -na
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg6.msg" ":defaultShaderList1.s" -na
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg8.msg" ":defaultShaderList1.s" -na
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg10.msg" ":defaultShaderList1.s" -na
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg12.msg" ":defaultShaderList1.s" -na
		;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg14.msg" ":defaultShaderList1.s" -na
		;
connectAttr "scifi_dowtown_scenery:default_bldg15.msg" ":defaultShaderList1.s" -na
		;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_sector1.msg" ":defaultShaderList1.s" 
		-na;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "scifi_dowtown_scenery:default2P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_level1_windows1P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_wall2P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_floor1P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_roofs1P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_wall4P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg2b1P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg4P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg6P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg8P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg10P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg12P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg14P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg15P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_sector1P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1P2D.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "scifi_dowtown_scenery:default2F.msg" ":defaultTextureList1.tx" -na;
connectAttr "scifi_dowtown_scenery:default_lower_level_windows1F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_level1_windows1F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_level1_windows_2F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_wall2F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_floor1F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_roofs1F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_wall4F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg2b1F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windos_bldg2b1F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg4F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg4F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg6F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg6F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg8F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg8F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg10F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg10F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg12F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_windows_bldg12F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg14F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldg15F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldgs_side1F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_sector_sidewalk1F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_sector1F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_electrical___tubbing1F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_bldgs_under_street1F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "scifi_dowtown_scenery:default_under_level_floor1F.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"scifi_dowtown_scenery:default2F\" \"fileTextureName\" \"/Maps/derf1.jpg\" 2327793212 \"\" \"sourceImages\"\n1\n\"scifi_dowtown_scenery:default_lower_level_windows1F\" \"fileTextureName\" \"/Maps/1267046936mens.jpg\" 556662870 \"\" \"sourceImages\"\n2\n\"scifi_dowtown_scenery:default_level1_windows1F\" \"fileTextureName\" \"/Maps/tgb1.jpg\" 4214983889 \"\" \"sourceImages\"\n3\n\"scifi_dowtown_scenery:default_level1_windows_2F\" \"fileTextureName\" \"/Maps/dscn0512.jpg\" 1616879687 \"\" \"sourceImages\"\n4\n\"scifi_dowtown_scenery:default_wall2F\" \"fileTextureName\" \"/Maps/antenna.jpg\" 2778357784 \"\" \"sourceImages\"\n5\n\"scifi_dowtown_scenery:default_floor1F\" \"fileTextureName\" \"/Maps/fvb2.jpg\" 1135367981 \"\" \"sourceImages\"\n6\n\"scifi_dowtown_scenery:default_roofs1F\" \"fileTextureName\" \"/Maps/6b.jpg\" 295010040 \"\" \"sourceImages\"\n7\n\"scifi_dowtown_scenery:default_wall4F\" \"fileTextureName\" \"/Maps/dfca1.jpg\" 3634163229 \"\" \"sourceImages\"\n8\n\"scifi_dowtown_scenery:default_bldg2b1F\" \"fileTextureName\" \"/Maps/flatro5.jpg\" 2024005433 \"\" \"sourceImages\"\n9\n\"scifi_dowtown_scenery:default_windos_bldg2b1F\" \"fileTextureName\" \"/Maps/fac_231.jpg\" 3446675770 \"\" \"sourceImages\"\n10\n\"scifi_dowtown_scenery:default_bldg4F\" \"fileTextureName\" \"/Maps/flatro9.jpg\" 3176346168 \"\" \"sourceImages\"\n11\n\"scifi_dowtown_scenery:default_windows_bldg4F\" \"fileTextureName\" \"/Maps/fac_250.jpg\" 642372503 \"\" \"sourceImages\"\n12\n\"scifi_dowtown_scenery:default_bldg6F\" \"fileTextureName\" \"/Maps/flatro0.jpg\" 2957201481 \"\" \"sourceImages\"\n13\n\"scifi_dowtown_scenery:default_windows_bldg6F\" \"fileTextureName\" \"/Maps/dcv1.jpg\" 3951614308 \"\" \"sourceImages\"\n14\n\"scifi_dowtown_scenery:default_bldg8F\" \"fileTextureName\" \"/Maps/derf1.jpg\" 2327793212 \"\" \"sourceImages\"\n15\n\"scifi_dowtown_scenery:default_windows_bldg8F\" \"fileTextureName\" \"/Maps/axcv1.jpg\" 3857300072 \"\" \"sourceImages\"\n16\n\"scifi_dowtown_scenery:default_bldg10F\" \"fileTextureName\" \"/Maps/antenna.jpg\" 2778357784 \"\" \"sourceImages\"\n17\n\"scifi_dowtown_scenery:default_windows_bldg10F\" \"fileTextureName\" \"/Maps/dcv1.jpg\" 3951614308 \"\" \"sourceImages\"\n18\n\"scifi_dowtown_scenery:default_bldg12F\" \"fileTextureName\" \"/Maps/flatro0.jpg\" 2957201481 \"\" \"sourceImages\"\n19\n\"scifi_dowtown_scenery:default_windows_bldg12F\" \"fileTextureName\" \"/Maps/fac_240.jpg\" 3977576498 \"\" \"sourceImages\"\n20\n\"scifi_dowtown_scenery:default_bldg14F\" \"fileTextureName\" \"/Maps/fmq1b.jpg\" 679275206 \"\" \"sourceImages\"\n21\n\"scifi_dowtown_scenery:default_bldg15F\" \"fileTextureName\" \"/Maps/antenna_3.jpg\" 2767084405 \"\" \"sourceImages\"\n22\n\"scifi_dowtown_scenery:default_bldgs_side1F\" \"fileTextureName\" \"/Maps/vpf1b.jpg\" 3246075405 \"\" \"sourceImages\"\n23\n\"scifi_dowtown_scenery:default_sector_sidewalk1F\" \"fileTextureName\" \"/Maps/antenna.jpg\" 2778357784 \"\" \"sourceImages\"\n24\n\"scifi_dowtown_scenery:default_sector1F\" \"fileTextureName\" \"/Maps/derf1.jpg\" 2327793212 \"\" \"sourceImages\"\n25\n\"scifi_dowtown_scenery:default_electrical___tubbing1F\" \"fileTextureName\" \"/Maps/fbe1d.jpg\" 3985487127 \"\" \"sourceImages\"\n26\n\"scifi_dowtown_scenery:default_bldgs_under_street1F\" \"fileTextureName\" \"/Maps/fac_170.jpg\" 1516857345 \"\" \"sourceImages\"\n27\n\"scifi_dowtown_scenery:default_under_level_floor1F\" \"fileTextureName\" \"/Maps/antenna_01_01_01_01.jpg\" 647856032 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of fountain.ma
