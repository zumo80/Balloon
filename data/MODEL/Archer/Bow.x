xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 167;
 0.28157;-37.75875;9.63541;,
 -0.11587;-38.59457;10.10165;,
 -0.11587;-38.71221;9.55201;,
 -0.75159;-38.69451;10.09496;,
 -1.11019;-37.75875;9.63541;,
 -0.75159;-38.80063;9.59904;,
 0.28157;-35.78509;9.85275;,
 -0.15473;-35.70249;10.29558;,
 0.28157;-26.79167;3.71003;,
 -0.11587;-38.71221;9.55201;,
 -0.15473;-27.06751;3.36251;,
 -1.11019;-35.78509;9.85275;,
 -0.67387;-35.70249;10.29558;,
 -0.75159;-38.80063;9.59904;,
 -1.11019;-37.75875;9.63541;,
 -1.11019;-26.79167;3.71003;,
 -0.67387;-27.06751;3.36251;,
 -0.11587;-38.71221;9.55201;,
 -0.15473;-27.06751;3.36251;,
 0.28157;-26.01261;5.30150;,
 0.28157;-6.88923;-3.73832;,
 0.28157;-21.23059;-2.66292;,
 -0.15473;-21.44303;-3.08307;,
 -0.15933;-7.00183;-4.15718;,
 -0.67387;-21.44303;-3.08307;,
 -1.11019;-21.23059;-2.66292;,
 -1.11019;-6.88899;-3.73741;,
 -0.66929;-7.00183;-4.15718;,
 -0.15473;-21.44303;-3.08307;,
 -1.11019;-35.78509;9.85275;,
 -1.11019;-26.01261;5.30150;,
 -0.15473;-35.70249;10.29558;,
 0.28157;-35.78509;9.85275;,
 0.28157;-26.01261;5.30150;,
 -0.15473;-25.74939;5.66025;,
 0.28157;-20.00297;-1.27315;,
 -1.11019;-20.00297;-1.27315;,
 -0.67387;-19.79695;-0.85186;,
 -0.66623;-6.37125;-1.81157;,
 -1.11019;-6.48673;-2.24105;,
 -0.67387;-35.70249;10.29558;,
 -0.67387;-25.74939;5.66025;,
 0.28157;-20.00297;-1.27315;,
 -0.15473;-19.79695;-0.85186;,
 0.28157;-26.01261;5.30150;,
 0.54257;-5.34163;-4.36182;,
 0.09233;-5.34163;-4.78845;,
 0.28157;-6.48673;-2.24105;,
 0.73701;-5.34163;-1.52829;,
 0.54257;-5.34163;-4.36182;,
 0.09233;-5.34163;-4.78845;,
 -0.40743;-4.76905;-4.02322;,
 0.02205;-4.76905;-3.57525;,
 -1.37119;-5.34163;-4.36182;,
 -0.92093;-5.34163;-4.78847;,
 -0.42119;-4.76905;-4.02322;,
 -0.85065;-4.76905;-3.57525;,
 0.02205;-4.76905;-3.57525;,
 0.02205;-4.76905;-2.27893;,
 -1.56563;-5.34163;-1.52829;,
 -0.16237;-6.37125;-1.81157;,
 0.32201;-5.34163;-1.06961;,
 -0.85065;-4.76905;-2.27903;,
 -0.15933;-7.00183;-4.15718;,
 0.73701;-5.34163;-1.52829;,
 0.02205;-4.76905;-2.27893;,
 -0.40641;-4.76905;-1.83494;,
 0.32201;-5.34163;-1.06961;,
 -1.15061;-5.34163;-1.06964;,
 -0.41429;-0.04649;-4.02322;,
 0.02205;-0.04649;-3.58687;,
 -0.85065;-0.04649;-3.58687;,
 -0.42209;-4.76905;-1.83494;,
 0.02205;-0.04649;-2.27126;,
 -0.41431;-0.04649;-1.83494;,
 -0.85065;-0.04649;-2.27122;,
 0.02205;-0.04649;-3.58687;,
 -0.41429;-0.04649;-4.02322;,
 -0.40743;4.67607;-4.02322;,
 0.02205;4.67607;-3.57525;,
 -0.42119;4.67607;-4.02322;,
 -0.85065;4.67607;-3.57525;,
 -0.40743;4.67607;-4.02322;,
 -0.40651;4.67607;-1.83494;,
 0.02205;4.67607;-2.27903;,
 -0.42209;4.67607;-1.83494;,
 -0.85065;4.67607;-2.27903;,
 0.09233;5.24865;-4.78845;,
 0.54257;5.24865;-4.36182;,
 0.09233;5.24865;-4.78845;,
 -0.15933;6.90885;-4.15718;,
 0.28157;6.79601;-3.73741;,
 0.02205;4.67607;-2.27903;,
 0.73701;5.24865;-1.52829;,
 -1.37119;5.24865;-4.36182;,
 -0.92093;5.24865;-4.78847;,
 0.28157;6.39371;-2.24105;,
 -0.66929;6.90885;-4.15718;,
 -1.11019;6.79627;-3.73832;,
 -1.56563;5.24865;-1.52829;,
 0.73701;5.24865;-1.52829;,
 0.32201;5.24865;-1.06961;,
 -0.16237;6.27827;-1.81157;,
 0.32201;5.24865;-1.06961;,
 -1.11019;6.39371;-2.24105;,
 -1.15061;5.24865;-1.06964;,
 -0.66623;6.27827;-1.81157;,
 -0.15473;21.35007;-3.08307;,
 0.28157;21.13761;-2.66292;,
 -0.67387;21.35007;-3.08307;,
 -1.11019;21.13761;-2.66292;,
 0.28157;19.90999;-1.27315;,
 -0.15473;19.70393;-0.85186;,
 -1.11019;19.90999;-1.27315;,
 -0.67387;19.70393;-0.85186;,
 -0.16237;-6.37125;-1.81157;,
 0.02205;-0.04649;-2.27126;,
 0.09233;5.24865;-4.78845;,
 -0.15933;6.90885;-4.15718;,
 -0.16237;6.27827;-1.81157;,
 -0.65581;-34.09995;9.54924;,
 -0.65581;-34.43693;9.70618;,
 -0.56359;-34.70955;9.83315;,
 -0.41429;-34.81365;9.88165;,
 -0.56359;-33.82735;9.42225;,
 -0.41431;-33.72317;9.37381;,
 -0.26501;-33.82735;9.42225;,
 -0.17279;-34.09995;9.54924;,
 -0.17281;-34.43693;9.70618;,
 -0.26501;-34.70955;9.83317;,
 0.28157;26.69865;3.71003;,
 -0.15473;26.97451;3.36251;,
 -0.11587;38.61921;9.55201;,
 0.28157;37.66583;9.63541;,
 -0.71273;38.61921;9.55201;,
 -0.67387;26.97451;3.36251;,
 -1.11019;26.69865;3.71003;,
 -1.11019;37.66583;9.63541;,
 -0.15473;21.35007;-3.08307;,
 -0.15473;19.70393;-0.85186;,
 -0.07701;38.60155;10.09496;,
 -0.15473;35.60953;10.29558;,
 0.28157;35.69215;9.85275;,
 -1.11019;35.69215;9.85275;,
 -0.67387;35.60953;10.29558;,
 -0.71273;38.50165;10.10165;,
 -0.11587;38.61921;9.55201;,
 -0.71273;38.61921;9.55201;,
 0.28157;25.91967;5.30150;,
 -0.15473;26.97451;3.36251;,
 -0.15473;25.65643;5.66025;,
 -0.15473;25.65643;5.66025;,
 -0.67387;25.65643;5.66025;,
 -1.11019;25.91967;5.30150;,
 -0.67387;35.60953;10.29558;,
 -0.11587;38.61921;9.55201;,
 -0.15473;35.60953;10.29558;,
 -0.17279;34.00697;9.54924;,
 -0.17281;34.34391;9.70618;,
 -0.26501;34.61661;9.83317;,
 -0.41429;34.72069;9.88165;,
 -0.26501;33.73427;9.42225;,
 -0.41431;33.63023;9.37381;,
 -0.56359;33.73427;9.42225;,
 -0.65581;34.00697;9.54924;,
 -0.65581;34.34391;9.70618;,
 -0.56359;34.61661;9.83315;;
 
 138;
 3;0,1,2;,
 3;3,4,5;,
 4;1,0,6,7;,
 4;8,0,9,10;,
 4;3,5,2,1;,
 4;11,4,3,12;,
 4;13,14,15,16;,
 4;1,7,12,3;,
 4;17,13,16,18;,
 4;8,19,6,0;,
 4;20,21,22,23;,
 4;24,25,26,27;,
 4;22,21,8,10;,
 4;18,16,24,28;,
 4;14,29,30,15;,
 4;31,32,33,34;,
 4;16,15,25,24;,
 4;21,35,19,8;,
 4;36,37,38,39;,
 4;29,40,41,30;,
 4;15,30,36,25;,
 4;42,43,34,44;,
 4;41,34,43,37;,
 4;30,41,37,36;,
 4;45,20,23,46;,
 4;47,20,45,48;,
 4;49,50,51,52;,
 4;27,26,53,54;,
 4;55,54,53,56;,
 4;45,57,58,48;,
 4;53,26,39,59;,
 4;60,47,48,61;,
 4;62,56,53,59;,
 4;28,24,27,63;,
 4;64,65,66,67;,
 4;59,39,38,68;,
 3;51,55,69;,
 4;70,52,51,69;,
 4;55,56,71,69;,
 4;72,62,59,68;,
 4;20,47,35,21;,
 4;66,65,73,74;,
 3;72,66,74;,
 4;75,62,72,74;,
 4;25,36,39,26;,
 4;76,77,78,79;,
 4;80,69,71,81;,
 3;69,80,82;,
 4;83,74,73,84;,
 4;75,74,85,86;,
 4;78,87,88,79;,
 4;88,89,90,91;,
 4;92,79,88,93;,
 4;94,95,80,81;,
 3;74,83,85;,
 4;88,91,96,93;,
 4;97,95,94,98;,
 4;94,81,86,99;,
 4;83,84,100,101;,
 4;102,103,93,96;,
 4;104,98,94,99;,
 4;99,86,85,105;,
 4;106,104,99,105;,
 4;63,27,54,50;,
 4;50,54,55,51;,
 4;91,90,107,108;,
 4;109,97,98,110;,
 4;102,96,111,112;,
 4;113,104,106,114;,
 4;38,115,67,68;,
 4;68,67,66,72;,
 4;76,116,58,57;,
 4;56,62,75,71;,
 4;79,92,116,76;,
 4;71,75,86,81;,
 4;82,80,95,117;,
 4;117,95,97,118;,
 4;85,83,101,105;,
 4;105,101,119,106;,
 3;41,40,120;,
 3;120,40,121;,
 3;121,40,122;,
 3;40,123,122;,
 3;120,124,41;,
 3;41,124,125;,
 3;125,126,41;,
 3;34,41,127;,
 3;41,126,127;,
 3;34,127,31;,
 3;127,128,31;,
 3;128,129,31;,
 3;129,123,31;,
 3;123,40,31;,
 4;130,131,132,133;,
 4;134,135,136,137;,
 4;108,111,96,91;,
 4;118,97,109,138;,
 4;106,119,139,114;,
 4;98,104,113,110;,
 4;140,141,142,133;,
 4;143,144,145,137;,
 3;146,140,133;,
 4;145,140,146,147;,
 3;137,145,147;,
 4;131,130,108,107;,
 4;130,148,111,108;,
 4;138,109,135,149;,
 4;148,150,112,111;,
 4;109,110,136,135;,
 4;114,139,151,152;,
 4;110,113,153,136;,
 4;113,114,152,153;,
 4;133,142,148,130;,
 4;142,141,150,148;,
 4;154,143,153,152;,
 4;149,135,134,155;,
 4;136,153,143,137;,
 4;145,144,141,140;,
 3;151,156,157;,
 3;157,156,158;,
 3;158,156,159;,
 3;156,160,159;,
 3;151,157,152;,
 3;152,157,161;,
 3;161,162,152;,
 3;152,162,163;,
 3;152,163,164;,
 3;152,164,154;,
 3;164,165,154;,
 3;160,156,166;,
 3;165,166,154;,
 3;166,156,154;,
 4;43,42,47,60;,
 4;115,38,37,43;,
 4;162,161,157,163;,
 4;163,157,158,164;,
 4;164,158,159,165;,
 4;165,159,160,166;;
 
 MeshMaterialList {
  12;
  138;
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  10,
  10,
  10,
  11,
  11,
  10,
  10,
  10,
  11,
  10,
  10,
  10,
  10,
  10,
  11,
  11,
  11,
  11,
  10,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  10,
  10,
  10,
  10,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11,
  11;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.765600;0.659200;0.241600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.006400;0.068800;0.028000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.000000;0.060000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.122400;0.690400;0.072000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.768800;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.392000;0.138400;0.050400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.721600;0.586400;0.056800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.627200;0.627200;0.627200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.674400;0.448800;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  159;
  0.975384;-0.215423;0.047103;,
  0.886513;-0.236579;0.397649;,
  0.889157;-0.372879;-0.265256;,
  -0.902101;-0.199172;0.382811;,
  -0.980541;-0.191398;0.043662;,
  -0.905491;-0.332804;-0.263303;,
  0.879676;0.087511;0.467453;,
  0.932141;-0.227211;-0.281936;,
  0.197697;0.311211;0.929550;,
  -0.882054;0.089512;0.462568;,
  -0.934175;-0.224317;-0.277486;,
  -0.199298;0.312317;0.928837;,
  0.403327;-0.571056;-0.714998;,
  -0.408445;-0.570055;-0.712889;,
  0.926491;0.222634;0.303395;,
  0.932991;-0.160399;-0.322180;,
  0.406386;-0.408100;-0.817499;,
  0.909414;-0.179508;-0.375159;,
  -0.933034;-0.160379;-0.322064;,
  -0.909519;-0.179503;-0.374905;,
  -0.406507;-0.408108;-0.817435;,
  -0.926487;0.222640;0.303403;,
  0.310196;0.527197;0.791101;,
  0.406088;0.397882;0.822668;,
  0.932878;0.156674;0.324332;,
  0.350054;-0.308272;0.884551;,
  -0.406077;0.397884;0.822672;,
  -0.350045;-0.308270;0.884555;,
  -0.932874;0.156678;0.324341;,
  0.372637;-0.230344;-0.898934;,
  -0.167750;0.485450;0.858020;,
  -0.372876;-0.230385;-0.898825;,
  0.903490;-0.229276;0.362130;,
  -0.903486;-0.229277;0.362141;,
  0.876376;-0.324390;-0.356000;,
  0.357142;-0.384728;-0.851137;,
  0.420768;0.635683;-0.647195;,
  -0.876477;-0.324409;-0.355735;,
  -0.357364;-0.384823;-0.851001;,
  0.818383;0.472496;-0.327105;,
  0.821932;-0.474431;0.315185;,
  -0.420765;0.635686;-0.647194;,
  0.773981;0.622380;0.116607;,
  -0.818381;0.472500;-0.327103;,
  0.273512;-0.627960;0.728600;,
  -0.773971;0.622393;0.116604;,
  -0.821927;-0.474433;0.315197;,
  0.180180;0.860892;0.475815;,
  0.387542;0.000000;-0.921852;,
  0.925881;0.000000;-0.377814;,
  -0.925881;0.000000;-0.377814;,
  -0.273507;-0.627956;0.728605;,
  -0.180170;0.860897;0.475809;,
  0.925570;0.000004;0.378577;,
  0.386782;0.000004;0.922171;,
  -0.925567;0.000000;0.378583;,
  0.281666;-0.315499;-0.906159;,
  -0.281661;-0.315500;-0.906160;,
  0.818383;-0.472496;-0.327105;,
  0.281114;-0.315541;0.906316;,
  -0.818381;-0.472500;-0.327103;,
  -0.281114;-0.315538;0.906317;,
  0.192403;-0.844022;-0.500608;,
  0.535791;-0.818639;-0.206780;,
  0.925570;-0.000006;0.378578;,
  0.372883;0.230384;-0.898822;,
  -0.535785;-0.818644;-0.206776;,
  -0.192399;-0.844024;-0.500606;,
  -0.925567;-0.000004;0.378583;,
  0.524732;-0.836711;0.156753;,
  0.909520;0.179503;-0.374902;,
  0.903491;0.229278;0.362125;,
  -0.372629;0.230344;-0.898938;,
  -0.909412;0.179509;-0.375162;,
  0.180170;-0.860898;0.475809;,
  -0.524722;-0.836716;0.156757;,
  0.350058;0.308274;0.884549;,
  -0.903487;0.229279;0.362137;,
  -0.180170;-0.860896;0.475812;,
  -0.350049;0.308272;0.884553;,
  0.406520;0.408105;-0.817430;,
  -0.406382;0.408102;-0.817500;,
  0.932881;-0.156669;0.324328;,
  -0.932877;-0.156673;0.324337;,
  0.933039;0.160372;-0.322055;,
  0.406094;-0.397877;0.822667;,
  -0.932990;0.160401;-0.322183;,
  -0.406083;-0.397879;0.822672;,
  -0.000033;0.422180;0.906512;,
  -0.000027;0.422189;0.906508;,
  0.000048;0.422183;0.906511;,
  0.000294;0.422180;0.906512;,
  -0.000020;0.422174;0.906515;,
  0.000011;0.422182;0.906511;,
  -0.000017;0.422174;0.906515;,
  -0.000244;0.422173;0.906515;,
  0.000046;0.422184;0.906510;,
  0.000070;0.422178;0.906513;,
  0.872500;0.359660;-0.330739;,
  0.932142;0.227210;-0.281935;,
  0.403335;0.571053;-0.714996;,
  -0.932138;0.227216;-0.281944;,
  -0.889134;0.372907;-0.265293;,
  -0.403324;0.571056;-0.714999;,
  0.000035;-0.422164;0.906519;,
  0.000859;-0.422183;0.906510;,
  0.000001;-0.422164;0.906520;,
  0.001239;-0.422193;0.906505;,
  -0.000023;-0.422173;0.906515;,
  -0.000042;-0.422174;0.906515;,
  0.943653;0.243597;-0.224009;,
  -0.001033;-0.422193;0.906505;,
  -0.000077;-0.422160;0.906521;,
  -0.001213;-0.422185;0.906509;,
  0.000016;-0.422163;0.906520;,
  -0.951903;0.249665;-0.177617;,
  0.882063;-0.089508;0.462551;,
  0.916118;0.233670;0.325771;,
  0.176514;-0.326344;0.928624;,
  -0.886510;0.236605;0.397639;,
  -0.879670;-0.087512;0.467464;,
  -0.228502;-0.292316;0.928622;,
  0.926495;-0.222628;0.303388;,
  0.310288;-0.527179;0.791078;,
  -0.167793;-0.485448;0.858013;,
  -0.926490;-0.222634;0.303397;,
  0.149797;-0.966825;0.206904;,
  0.000016;-0.066905;0.997759;,
  -0.000031;-0.469349;-0.883013;,
  0.535791;0.818639;-0.206780;,
  0.192403;0.844022;-0.500608;,
  -0.192399;0.844024;-0.500606;,
  -0.535785;0.818644;-0.206776;,
  0.524742;0.836703;0.156761;,
  -0.524722;0.836716;0.156757;,
  0.000000;0.000000;-1.000000;,
  -0.714513;0.000000;-0.699622;,
  0.386783;0.000015;0.922171;,
  0.713359;0.000027;0.700798;,
  -0.386776;0.000004;0.922174;,
  -0.713350;0.000008;0.700808;,
  -0.713350;0.000000;0.700808;,
  0.375450;-0.846347;-0.377802;,
  0.876476;0.324411;-0.355735;,
  0.357372;0.384822;-0.850998;,
  -0.375453;-0.846348;-0.377796;,
  0.821934;0.474434;0.315177;,
  -0.357131;0.384729;-0.851141;,
  -0.876375;0.324391;-0.356002;,
  0.351106;-0.876948;0.328156;,
  0.273519;0.627964;0.728594;,
  -0.821929;0.474436;0.315189;,
  -0.351098;-0.876948;0.328164;,
  -0.273513;0.627960;0.728599;,
  0.757245;0.048442;0.651332;,
  -0.746668;0.054414;0.662968;,
  -0.077831;0.988847;0.126982;,
  0.000000;0.469348;-0.883013;,
  -0.000015;0.066904;0.997759;;
  138;
  3;0,1,2;,
  3;3,4,5;,
  4;1,0,6,8;,
  4;7,0,2,12;,
  4;126,126,126,126;,
  4;9,4,3,11;,
  4;5,4,10,13;,
  4;127,8,11,127;,
  4;128,128,13,12;,
  4;7,14,6,0;,
  4;17,15,16,29;,
  4;20,18,19,31;,
  4;16,15,7,12;,
  4;12,13,20,16;,
  4;4,9,21,10;,
  4;8,6,14,22;,
  4;13,10,18,20;,
  4;15,24,14,7;,
  4;28,26,27,33;,
  4;9,11,30,21;,
  4;10,21,28,18;,
  4;24,23,22,14;,
  4;30,22,23,26;,
  4;21,30,26,28;,
  4;34,17,29,35;,
  4;32,17,34,40;,
  4;129,130,36,39;,
  4;31,19,37,38;,
  4;41,131,132,43;,
  4;129,39,42,133;,
  4;37,19,33,46;,
  4;25,32,40,44;,
  4;45,43,132,134;,
  4;16,20,31,29;,
  4;133,42,47,47;,
  4;46,33,27,51;,
  3;135,135,48;,
  4;49,39,36,48;,
  4;41,43,50,136;,
  4;52,45,134,52;,
  4;17,32,24,15;,
  4;137,138,53,54;,
  3;139,137,54;,
  4;55,140,139,141;,
  4;18,28,33,19;,
  4;49,48,56,58;,
  4;57,136,50,60;,
  3;48,57,56;,
  4;59,54,53,64;,
  4;55,141,61,68;,
  4;142,62,63,58;,
  4;143,144,65,70;,
  4;69,58,63,69;,
  4;66,67,145,60;,
  3;54,59,61;,
  4;143,70,71,146;,
  4;72,147,148,73;,
  4;66,60,75,75;,
  4;149,69,69,74;,
  4;76,150,146,71;,
  4;77,73,148,151;,
  4;75,75,152,78;,
  4;79,77,151,153;,
  4;29,31,38,35;,
  4;130,131,41,36;,
  4;70,65,80,84;,
  4;81,72,73,86;,
  4;76,71,82,85;,
  4;83,77,79,87;,
  4;27,25,44,51;,
  4;52,47,47,52;,
  4;49,53,42,39;,
  4;43,45,55,50;,
  4;58,64,53,49;,
  4;50,55,68,60;,
  4;56,57,67,62;,
  4;144,147,72,65;,
  4;61,59,74,78;,
  4;153,150,76,79;,
  3;30,11,91;,
  3;91,11,90;,
  3;90,11,89;,
  3;11,88,89;,
  3;91,92,30;,
  3;30,92,93;,
  3;93,94,30;,
  3;22,30,95;,
  3;30,94,95;,
  3;22,95,8;,
  3;95,96,8;,
  3;96,97,8;,
  3;97,88,8;,
  3;88,11,8;,
  4;99,100,98,110;,
  4;102,103,101,115;,
  4;84,82,71,70;,
  4;65,72,81,80;,
  4;79,76,85,87;,
  4;73,77,83,86;,
  4;117,118,116,154;,
  4;120,121,119,155;,
  3;98,117,110;,
  4;156,156,156,156;,
  3;115,119,102;,
  4;100,99,84,80;,
  4;99,122,82,84;,
  4;80,81,103,100;,
  4;122,123,85,82;,
  4;81,86,101,103;,
  4;87,85,123,124;,
  4;86,83,125,101;,
  4;83,87,124,125;,
  4;110,116,122,99;,
  4;116,118,123,122;,
  4;121,120,125,124;,
  4;100,103,157,157;,
  4;101,125,120,115;,
  4;158,121,118,158;,
  3;123,118,105;,
  3;105,118,107;,
  3;107,118,109;,
  3;118,112,109;,
  3;123,105,124;,
  3;124,105,104;,
  3;104,106,124;,
  3;124,106,108;,
  3;124,108,111;,
  3;124,111,121;,
  3;111,113,121;,
  3;112,118,114;,
  3;113,114,121;,
  3;114,118,121;,
  4;23,24,32,25;,
  4;25,27,26,23;,
  4;106,104,105,108;,
  4;108,105,107,111;,
  4;111,107,109,113;,
  4;113,109,112,114;;
 }
 MeshTextureCoords {
  167;
  0.431080;0.746920;,
  0.440310;0.821390;,
  0.375000;0.803500;,
  0.433930;0.935590;,
  0.375000;1.000000;,
  0.416310;0.958690;,
  0.567310;0.747420;,
  0.625000;0.828370;,
  0.418400;0.718500;,
  0.375000;0.747750;,
  0.375000;0.718750;,
  0.505600;1.000000;,
  0.625000;0.921630;,
  0.310580;0.002030;,
  0.431080;0.003080;,
  0.418400;0.031500;,
  0.296630;0.031250;,
  0.196390;0.002250;,
  0.203370;0.031250;,
  0.583430;0.718860;,
  0.419650;0.667820;,
  0.415290;0.687790;,
  0.375000;0.687500;,
  0.375000;0.667820;,
  0.296630;0.062500;,
  0.415290;0.062210;,
  0.419740;0.082180;,
  0.295800;0.082180;,
  0.203370;0.062500;,
  0.567310;0.002580;,
  0.583420;0.031140;,
  0.796630;0.000000;,
  0.875000;0.002820;,
  0.875000;0.031250;,
  0.796630;0.031250;,
  0.578680;0.687340;,
  0.578680;0.062660;,
  0.703370;0.062500;,
  0.704750;0.082180;,
  0.579230;0.082180;,
  0.703370;0.000000;,
  0.703370;0.031250;,
  0.875000;0.062500;,
  0.796630;0.062500;,
  0.875000;0.032940;,
  0.403680;0.656250;,
  0.375000;0.662870;,
  0.579230;0.667820;,
  0.594170;0.656250;,
  0.125000;0.101080;,
  0.181730;0.093750;,
  0.248030;0.109380;,
  0.125000;0.109380;,
  0.403680;0.093750;,
  0.318270;0.093750;,
  0.251970;0.109380;,
  0.426170;0.109380;,
  0.426170;0.640620;,
  0.574270;0.640620;,
  0.594170;0.093750;,
  0.625000;0.667820;,
  0.625000;0.663810;,
  0.574260;0.109380;,
  0.204200;0.082180;,
  0.875000;0.104950;,
  0.875000;0.109380;,
  0.752260;0.109380;,
  0.827820;0.093750;,
  0.672180;0.093750;,
  0.250000;0.125000;,
  0.125000;0.125000;,
  0.424850;0.125000;,
  0.747770;0.109380;,
  0.875000;0.125000;,
  0.750000;0.125000;,
  0.575150;0.125000;,
  0.424850;0.625000;,
  0.375000;0.625000;,
  0.375000;0.609380;,
  0.426170;0.609380;,
  0.251970;0.140620;,
  0.426170;0.140620;,
  0.248030;0.140620;,
  0.752230;0.140620;,
  0.875000;0.140620;,
  0.747770;0.140620;,
  0.574260;0.140620;,
  0.375000;0.607060;,
  0.403680;0.593750;,
  0.375000;0.587130;,
  0.375000;0.582180;,
  0.419740;0.582180;,
  0.574260;0.609380;,
  0.594170;0.593750;,
  0.403680;0.156250;,
  0.318270;0.156250;,
  0.579230;0.582180;,
  0.295800;0.167820;,
  0.419640;0.167820;,
  0.594170;0.156250;,
  0.875000;0.148440;,
  0.827820;0.156250;,
  0.625000;0.582180;,
  0.625000;0.586190;,
  0.579230;0.167820;,
  0.672180;0.156250;,
  0.704750;0.167820;,
  0.375000;0.562500;,
  0.415290;0.562210;,
  0.296630;0.187500;,
  0.415290;0.187790;,
  0.578680;0.562660;,
  0.625000;0.562500;,
  0.578680;0.187340;,
  0.703370;0.187500;,
  0.795250;0.082180;,
  0.575150;0.625000;,
  0.181730;0.156250;,
  0.204200;0.167820;,
  0.795250;0.167820;,
  0.706620;0.005030;,
  0.706620;0.003970;,
  0.723190;0.003120;,
  0.750000;0.002790;,
  0.723190;0.005890;,
  0.750000;0.006210;,
  0.776810;0.005890;,
  0.793380;0.005030;,
  0.793380;0.003970;,
  0.776810;0.003120;,
  0.418400;0.531500;,
  0.375000;0.531250;,
  0.375000;0.502250;,
  0.431080;0.503080;,
  0.303610;0.247750;,
  0.296630;0.218750;,
  0.418400;0.218500;,
  0.431080;0.246920;,
  0.203370;0.187500;,
  0.796630;0.187500;,
  0.433930;0.435580;,
  0.625000;0.421630;,
  0.567310;0.502580;,
  0.567310;0.247420;,
  0.625000;0.328370;,
  0.440310;0.321390;,
  0.419070;0.455930;,
  0.375000;0.303510;,
  0.583420;0.531140;,
  0.203370;0.218750;,
  0.625000;0.531250;,
  0.796630;0.218750;,
  0.703370;0.218750;,
  0.583420;0.218860;,
  0.703370;0.250000;,
  0.196390;0.247750;,
  0.796630;0.250000;,
  0.793380;0.244970;,
  0.793380;0.246030;,
  0.776810;0.246880;,
  0.750000;0.247210;,
  0.776810;0.244110;,
  0.750000;0.243790;,
  0.723190;0.244110;,
  0.706620;0.244970;,
  0.706620;0.246030;,
  0.723190;0.246880;;
 }
}